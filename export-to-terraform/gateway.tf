resource "aviatrix_gateway" "gateway_1" {
    single_az_ha = true
    gw_name = "cp-data-ore-prod-aviatrix-egress-gw"
    vpc_id = "vpc-070328c0892524b2a"
    cloud_type = 1
    vpc_reg = "us-west-2"
    gw_size = "t3a.medium"
    account_name = "cp-data-prod"
    single_ip_snat = true
    subnet = "172.27.12.0/24"
    enable_encrypt_volume = true
    peering_ha_subnet = "172.27.13.0/24"
    peering_ha_gw_size = "t3a.medium"
}

resource "aviatrix_gateway" "gateway_2" {
    gw_name = "cp-prod-fra-pci-aviatrix-egress-gw"
    vpc_id = "vpc-675c100f"
    cloud_type = 1
    vpc_reg = "eu-central-1"
    gw_size = "c5.large"
    eip = "18.195.180.152"
    enable_vpc_dns_server = true
    account_name = "cp-prod-pci"
    single_ip_snat = true
    subnet = "172.21.122.128/26"
    allocate_new_eip = false
}

resource "aviatrix_gateway" "gateway_3" {
    single_az_ha = true
    gw_name = "cp-prod-mon-pci-aviatrix-egress-gw"
    vpc_id = "vpc-0c5113662d5d0b049"
    cloud_type = 1
    vpc_reg = "ca-central-1"
    gw_size = "t2.medium"
    eip = "35.182.141.176"
    enable_vpc_dns_server = true
    account_name = "cp-prod-pci"
    single_ip_snat = true
    subnet = "172.23.122.128/26"
    allocate_new_eip = false
}

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
}

