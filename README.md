# ChargePoint Migration Process

This document outlines the recommended process for migrating an existing Aviatrix 6.5 environment to version 7.2. This approach stages as much of the new environment as possible and limits any network-impacting changes to designated maintenance windows. We will use the Terraform code exported from the 6.5 Prod Controller as a reference. Any necessary modifications to the code will be highlighted.

**Note:** Throughout this document, the existing 6.5 Controller will be referred to as the "old" Controller and the 7.2 Controller will be referred to as the "new" Controller.

- [ChargePoint Migration Process](#chargepoint-migration-process)
  - [Deploy 7.2 Controller](#deploy-72-controller)
  - [Staging Activities](#staging-activities)
    - [Deploy Spoke And Transit Gateways](#deploy-spoke-and-transit-gateways)
    - [Preconfigure Egress Control Settings](#preconfigure-egress-control-settings)
      - [Update `fqdn.tf`](#update-fqdntf)
      - [Update `fqdn_tag_rule.tf`](#update-fqdn_tag_ruletf)
      - [Attach Gateway To Egress FQDN Filter](#attach-gateway-to-egress-fqdn-filter)
    - [Preconfigure Stateful Firewall](#preconfigure-stateful-firewall)
      - [Update `firewall_tag.tf`](#update-firewall_tagtf)
      - [Update `firewall.tf`](#update-firewalltf)
      - [Update `firewall_policy.tf`](#update-firewall_policytf)
  - [Maintenance Window Activities](#maintenance-window-activities)
    - [Migrate Spoke And Transit Gateways](#migrate-spoke-and-transit-gateways)
      - [Pre-Migration Verification](#pre-migration-verification)
        - [Spoke Routes](#spoke-routes)
        - [VGW Settings](#vgw-settings)
      - [Detach Spokes From Transit On Old Controller](#detach-spokes-from-transit-on-old-controller)
      - [Attach Spokes To Transit On New Controller](#attach-spokes-to-transit-on-new-controller)
      - [Remove VGW External Connection On Old Controller](#remove-vgw-external-connection-on-old-controller)
      - [Detach VGW From Transit VPC On Old Controller](#detach-vgw-from-transit-vpc-on-old-controller)
      - [Add VGW External Connection On New Controller](#add-vgw-external-connection-on-new-controller)
      - [Reattach VGW To Transit VPC](#reattach-vgw-to-transit-vpc)
      - [Post-Migration Verification](#post-migration-verification)
    - [Egress Gateway Migration](#egress-gateway-migration)
      - [Disable Gateway Single AZ HA](#disable-gateway-single-az-ha)
      - [Stop Egress Gateway Instances](#stop-egress-gateway-instances)
      - [Disassociate EIPs From Egress Gateways](#disassociate-eips-from-egress-gateways)
      - [Deploy Egress Gateways](#deploy-egress-gateways)
      - [Attach Gateway To Egress FQDN Filter](#attach-gateway-to-egress-fqdn-filter-1)
      - [Update `firewall.tf`](#update-firewalltf-1)
      - [Update `firewall_policy.tf`](#update-firewall_policytf-1)
      - [Validation](#validation)
  - [Rollback](#rollback)
    - [Rollback Egress Gateway](#rollback-egress-gateway)
      - [Remove Entries From `firewall_policy.tf`](#remove-entries-from-firewall_policytf)
      - [Remove Entries From `firewall.tf`](#remove-entries-from-firewalltf)
      - [Detach Gateway From Egress FQDN Filter](#detach-gateway-from-egress-fqdn-filter)
      - [Delete New Egress Gateway](#delete-new-egress-gateway)
      - [Associate EIPs With Original Egress Gateways](#associate-eips-with-original-egress-gateways)
      - [Start Original Egress Gateways](#start-original-egress-gateways)
      - [Re-enable Gateway Single AZ HA](#re-enable-gateway-single-az-ha)
      - [Validate Default Routes](#validate-default-routes)
    - [Rollback Spoke And Transit Gateways](#rollback-spoke-and-transit-gateways)
      - [Detach VGW From Transit VPC](#detach-vgw-from-transit-vpc)
      - [Remove VGW External Connection On New Controller](#remove-vgw-external-connection-on-new-controller)
      - [Detach Spokes From Transit On New Controller](#detach-spokes-from-transit-on-new-controller)
      - [Add VGW External Connection On Old Controller](#add-vgw-external-connection-on-old-controller)
      - [Re-attach Spokes To Transit On Old Controller](#re-attach-spokes-to-transit-on-old-controller)
      - [Attach VGW To Transit VPC](#attach-vgw-to-transit-vpc)
      - [Delete Unused Resources](#delete-unused-resources)

## Deploy 7.2 Controller

We will use the following code to deploy an Aviatrix Controller running 7.2 along with Aviatrix CoPilot:

```
provider "aws" {
  region = "xxxxx"
}

module "control_plane" {
  source = "github.com/terraform-aviatrix-modules/terraform-aviatrix-aws-controlplane?ref=v0.9.2"

  controller_name           = "ChargePoint-New-AviatrixController"
  copilot_name              = "ChargePoint-New-AviatrixCopilot"
  incoming_ssl_cidrs        = ["x.x.x.x/x"]
  controller_admin_email    = "admin@example.com"
  controller_admin_password = "xxxxx"
  account_email             = "admin@example.com"
  access_account_name       = "xxxxx"
  customer_id               = "xxxxx"
  use_existing_vpc          = true
  vpc_id                    = "vpc-xxxxx"
  subnet_id                 = "subnet-xxxxx"
  controller_version        = "7.2.5012"
  module_config = {
    "account_onboarding" : true,
    "controller_deployment" : true,
    "controller_initialization" : true,
    "copilot_deployment" : true,
    "copilot_initialization" : true,
    "iam_roles" : false
  }
}

output "controlplane_data" {
  value = module.control_plane
}

```

## Staging Activities

There are three tasks that can be completed before the maintenance window:

1. Deploy spoke and transit gateways
2. Preconfigure egress control settings
3. Preconfigure stateful firewall settings

### Deploy Spoke And Transit Gateways

The spoke and transit gateways can be deployed on the new Controller at any time. The egress gateways will need to be deployed during a maintenance window because we need to preserve the EIPs from the existing egress gateways.

The spoke and transit gateways are defined by the following files:

- `spoke_gateway.tf`
- `transit_gateway.tf`

There are minor code changes required:

- The spoke and transit gateways on the new Controller will need to have new names. The transit gateway names are approaching the character limit and have only enough space for 2 additional characters.
- Two options have been deprecated in newer versions of the Aviatrix Terraform provider. These lines should be commented out or removed from the code:
  - `enable_active_mesh`
  - `manage_transit_gateway_attachment`

Run `terraform apply`.

### Preconfigure Egress Control Settings

Egress Control is defined by the following files:

- `fqdn_tag_rule.tf`
- `fqdn.tf`

Initially the code in these two files should be commented out. They will need to be uncommented and applied in a specific order to avoid dependency issues during the `terraform apply`. The required order is:

1. Uncomment `fqdn.tf`. See below for required updates.
2. Uncomment `fqdn_tag_rule.tf`.
3. Attach the gateway to the Egress FQDN filter. This step will be performed during the maintenance window.

#### Update `fqdn.tf`

- We will create the Egress FQDN filter but not apply it to any gateways. This can be accomplished by leaving the `gw_filter_tag_list` entries commented out. Example `fqdn.tf`:

```
resource "aviatrix_fqdn" "fqdn_1" {
    fqdn_mode = "white"
    fqdn_enabled = true
    # gw_filter_tag_list {
    #     gw_name = "cp-prod-mon-pci-aviatrix-egress-gw"
    # }

    # gw_filter_tag_list {
    #     gw_name = "cp-prod-fra-pci-aviatrix-egress-gw"
    # }

    # gw_filter_tag_list {
    #     gw_name = "cp-prod-ore-pci-aviatrix-gw"
    # }

    fqdn_tag = "Payment-VPC-OutBound-Web-Whitelist"
    manage_domain_names = false
}
```

- Run `terraform apply`.

#### Update `fqdn_tag_rule.tf`

- `fqdn_tag_rule.tf` can be uncommented in its entirety.
- Run `terraform apply`.

#### Attach Gateway To Egress FQDN Filter

- This step will be performed during the maintenance window. See the maintenance window section for more details.

### Preconfigure Stateful Firewall

The stateful firewall is defined in the following files:

- `firewall_policy.tf`
- `firewall_tag.tf`
- `firewall.tf`

Initially the code in these three files should be commented out. They will need to be uncommented and applied in a specific order to avoid dependency issues during the `terraform apply`. The required order is:

1. Uncomment `firewall_tag.tf`. See below for required updates.
2. Uncomment `firewall.tf`. This step will be performed during the maintenance window.
3. Uncomment `firewall_policy.tf`. This step will be performed during the maintenance window.

#### Update `firewall_tag.tf`

- The firewall tags can be created before the maintenance window. Comment out or remove any lines that begin with `"$$hashKey"`.

```
resource "aviatrix_firewall_tag" "firewall_tag_1" {
    cidr_list {
        cidr = "208.71.209.32/27"
        # "$$hashKey" = "object:2184"
        cidr_tag_name = "Alertlogic-Networks-1"
    }

    cidr_list {
        cidr = "204.110.218.96/27"
        # "$$hashKey" = "object:2206"
        cidr_tag_name = "Alertlogic-Networks-2"
    }

    cidr_list {
        cidr = "204.110.219.96/27"
        # "$$hashKey" = "object:2228"
        cidr_tag_name = "Alertlogic-Networks-3"
    }

    cidr_list {
        cidr = "185.54.124.0/24"
        # "$$hashKey" = "object:7689"
        cidr_tag_name = "Alertlogic-Networks-4"
    }

    firewall_tag = "Alertlogic-Outbound-Traffic"
}
```

- Run `terraform apply`.

#### Update `firewall.tf`

- This step will be performed during the maintenance window. See the maintenance window section for more details.

#### Update `firewall_policy.tf`

- This step will be performed during the maintenance window. See the maintenance window section for more details.

## Maintenance Window Activities

The maintenance window will be broken up into two phases:

1. Migrate spoke and transit gateways.
2. Migrate egress gateways.

### Migrate Spoke And Transit Gateways

#### Pre-Migration Verification

Capture the current configuration to ensure that settings remain unchanged after migration.

##### Spoke Routes

- From the Aviatrix Controller UI, go to Multi-Cloud Transit > List and switch to Spoke.
- Select the spoke gateway and click on Details/Diag.
- Go to VPC Route Table Details and click on the refresh icon.
- For each route table:
  - Filter the Gateway field for `aviatrix`.
  - Record the number of routes. This count should remain the same after migration.

##### VGW Settings

- From the AWS Management Console, find all route tables for the transit VPC.
- For each route table:
  - Check for static routes pointing to VGW.
  - Check the route propagation setting for the VGW (whether Yes or No).
  - Record the settings. They should remain the same after the migration.

#### Detach Spokes From Transit On Old Controller

- From the Aviatrix Controller UI, go to Multi-Cloud Transit > Setup > Attach/Detach, go to Detach Aviatrix Spoke Gateway, select the appropriate Spoke and Transit Gateways and click Detach.

#### Attach Spokes To Transit On New Controller

- In `spoke_transit_attachment.tf`, uncomment the appropriate resources to attach the spoke to the transit.

```
resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_2" {
    spoke_gw_name = "cp-prod-ore-pci-aviatrix-spoke-gw"
    transit_gw_name = "cp-prod-ore-transit-aviatrix-transit-hub-gw"
}
```

**Note:** The gateway names will need to be updated to the new names.

- Run `terraform apply`.

#### Remove VGW External Connection On Old Controller

- From the Aviatrix Controller UI, go to Multi-Cloud Transit > Setup > External Connection, go to Disconnect AWS VGW, select the appropriate VGW and click Detach.

#### Detach VGW From Transit VPC On Old Controller

- From the AWS Management Console, detach the VGW from the transit VPC.

#### Add VGW External Connection On New Controller

- In `vgw_conn.tf`, uncomment the appropriate resource for the VGW attachment.

```
resource "aviatrix_vgw_conn" "vgw_conn_3" {
    conn_name = "cp-prod-ore-transit-aviatrix-transit-gw-to-transit-vgw-connection"
    gw_name = "cp-prod-ore-transit-aviatrix-transit-hub-gw"
    vpc_id = "vpc-49a1cd30"
    bgp_vgw_id = "vgw-e85afef6"
    bgp_vgw_account = "AWS"
    bgp_vgw_region = "us-west-2"
    bgp_local_as_num = "65001"
}
```

**Note:** The gateway names will need to be updated to the new names.

- Run `terraform apply`.

#### Reattach VGW To Transit VPC

- From the AWS Management Console, reattach the VGW to the transit VPC.

#### Post-Migration Verification

Confirm that the settings captured during the pre-migration verification are unchanged.

- Verify that there are the same number of routes pointing to the Aviatrix gateways.
- Verify that the static routes pointing to the VGW are unchanged.
- Verify that the route propagation setting for the VGW is unchanged.

### Egress Gateway Migration

#### Disable Gateway Single AZ HA

- From the Aviatrix Controller UI, go to Gateway, select the egress gateway and click Edit. Go to Gateway Single AZ HA and click Disable.
- Repeat this process for the HA gateway.

#### Stop Egress Gateway Instances

- From the AWS Management Console, stop both egress gateway instances.

#### Disassociate EIPs From Egress Gateways

- From the AWS Management Console, select the egress gateway instance, go to Actions > Networking > Disassociate Elastic IP address
- Repeat this process for the HA gateway.

#### Deploy Egress Gateways

- Egress FQDN gateways will need to be deployed during the maintenance window because they will re-use EIPs used by the existing egress FQDN gateways.
- In the `aviatrix_gateway` resources in `gateway.tf`:
  - `eip` and `peering_ha_eip` should be set set to the EIPs from the original egress gateways.
  - `allocate_new_eip` should be set to `false`.
  - `single_ip_snat` should be set to `true`.

```
resource "aviatrix_gateway" "gateway_4" {
    single_az_ha = true
    gw_name = "cp-prod-ore-pci-aviatrix-gw"
    vpc_id = "vpc-d095b7a9"
    cloud_type = 1
    vpc_reg = "us-west-2"
    gw_size = "t2.medium"
    eip = "54.245.17.152"
    enable_vpc_dns_server = true
    account_name = "cp-prod-pci"
    single_ip_snat = true
    subnet = "172.20.122.128/26"
    allocate_new_eip = false
    peering_ha_subnet = "172.20.122.192/26"
    peering_ha_gw_size = "t2.medium"
    peering_ha_eip = "x.x.x.x"
}
```

- Run `terraform apply`.

#### Attach Gateway To Egress FQDN Filter

- Once the egress gateway has been deployed on the new Controller, we can attach the gateway to the Egress FQDN Filter. This can be accomplished by uncommenting the relevant `gw_filter_tag_list` entry. Here's an example `fqdn.tf` with `cp-prod-ore-pci-aviatrix-gw` attached to the filter:

```
resource "aviatrix_fqdn" "fqdn_1" {
    fqdn_mode = "white"
    fqdn_enabled = true
    # gw_filter_tag_list {
    #     gw_name = "cp-prod-mon-pci-aviatrix-egress-gw"
    # }

    # gw_filter_tag_list {
    #     gw_name = "cp-prod-fra-pci-aviatrix-egress-gw"
    # }

    gw_filter_tag_list {
        gw_name = "cp-prod-ore-pci-aviatrix-gw"
    }

    fqdn_tag = "Payment-VPC-OutBound-Web-Whitelist"
    manage_domain_names = false
}
```

**Note:** The gateway names will need to be updated to the new names.

- Run `terraform apply`.

#### Update `firewall.tf`

- The resources in `firewall.tf` can be uncommented as the relevant gateways are deployed on the new Controller.

```
resource "aviatrix_firewall" "firewall_2" {
    base_policy = "deny-all"
    base_log_enabled = false
    manage_firewall_policies = false
    gw_name = "cp-prod-ore-pci-aviatrix-gw"
}
```

**Note:** The gateway names will need to be updated to the new names.

- Run `terraform apply`.

#### Update `firewall_policy.tf`

- The resources in `firewall_policy.tf` can be uncommented as the relevant gateways are deployed on the new Controller.

```
resource "aviatrix_firewall_policy" "firewall_policy_3" {
    gw_name = "cp-prod-ore-pci-aviatrix-gw"
    src_ip = "172.20.122.53"
    dst_ip = "Alertlogic-Outbound-Traffic"
    protocol = "tcp"
    port = "4138"
    action = "allow"
    log_enabled = false
    description = "Event transport"
}
```

**Note:** The gateway names will need to be updated to the new names.

- Run `terraform apply`.

#### Validation

- From the AWS Management Console, verify that the 0.0.0.0/0 route in the private route tables point to the ENIs of the new egress gateways.
- From an instance within the VPC, validate that traffic is correctly allowed or denied based on egress FQDN filters and stateful firewall policies.

## Rollback

The rollback process will be the reverse of the migration process.

### Rollback Egress Gateway

#### Remove Entries From `firewall_policy.tf`

- Comment out resources that were uncommented in `firewall_policy.tf`.
- Run `terraform apply`.

#### Remove Entries From `firewall.tf`

- Comment out resources that were uncommented in `firewall.tf`.
- Run `terraform apply`.

#### Detach Gateway From Egress FQDN Filter

- Comment out the appropriate `gw_filter_tag_list` entry for the gateway in `fqdn.tf`.

```
resource "aviatrix_fqdn" "fqdn_1" {
    fqdn_mode = "white"
    fqdn_enabled = true
    # gw_filter_tag_list {
    #     gw_name = "cp-prod-mon-pci-aviatrix-egress-gw"
    # }

    # gw_filter_tag_list {
    #     gw_name = "cp-prod-fra-pci-aviatrix-egress-gw"
    # }

    # gw_filter_tag_list {
    #     gw_name = "cp-prod-ore-pci-aviatrix-gw"
    # }

    fqdn_tag = "Payment-VPC-OutBound-Web-Whitelist"
    manage_domain_names = false
}
```

- Run `terraform apply`.

#### Delete New Egress Gateway

- Comment out the appropriate gateway in `gateway.tf`.
- Run `terraform apply`.

**Note:** Since these gateways were deployed with `allocate_new_eip = false`, it's not necessary to explicitly disassociate the EIPs. However, you may choose to do so as a precaution.

#### Associate EIPs With Original Egress Gateways

- From the AWS Management Console, reassociate the EIPs with the original gateway instances.

#### Start Original Egress Gateways

- From the AWS Management Console, start the original gateway instances.

#### Re-enable Gateway Single AZ HA

- From the Aviatrix Controller UI, go to Gateway, select the egress gateway and click Edit. Go to Gateway Single AZ HA and click Enable.
- Repeat this process for the HA gateway.

#### Validate Default Routes

- From the AWS Management Console, validate that default routes point to the ENI of the original egress gateway instances.

### Rollback Spoke And Transit Gateways

#### Detach VGW From Transit VPC

- From the AWS Management Console, detach the VGW to the transit VPC.

#### Remove VGW External Connection On New Controller

- Comment out the appropriate VGW connection in `vgw_conn.tf`.
- Run `terraform apply`.

#### Detach Spokes From Transit On New Controller

- Comment out the appropriate spoke transit attachment `spoke_transit_attachment.tf`.
- Run `terraform apply`.

#### Add VGW External Connection On Old Controller

- From the Aviatrix Controller UI, go to Multi-Cloud Transit > Setup > External Connections and re-add the VGW External Connection.

#### Re-attach Spokes To Transit On Old Controller

- From the Aviatrix Controller UI, go to Multi-Cloud Transit > Setup > Attach/Detach, specify the appropriate spoke and transit gateways and click Attach.

#### Attach VGW To Transit VPC

- From the AWS Management Console, attach the VGW to the transit VPC.

#### Delete Unused Resources

- The remaining unused resources can be deleted by commenting out the appropriate Terraform resources.
