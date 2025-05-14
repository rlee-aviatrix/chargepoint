resource "aviatrix_vgw_conn" "vgw_conn_1" {
    conn_name = "cp-prod-mon-transit-aviatrix-transit-hub-gw-to-transit-vgw-connection"
    gw_name = "cp-prod-mon-transit-aviatrix-transit-hub-gw"
    vpc_id = "vpc-0551f59a1b60c8b26"
    bgp_vgw_id = "vgw-0df489769c721d150"
    bgp_vgw_account = "cp-prod-pci"
    bgp_vgw_region = "ca-central-1"
    bgp_local_as_num = "65001"
}

resource "aviatrix_vgw_conn" "vgw_conn_2" {
    conn_name = "cp-prod-fra-transit-aviatrix-hub-gw-to-transit-vgw-connection"
    gw_name = "cp-prod-fra-pci-transit-aviatrix-hub-gw"
    vpc_id = "vpc-87085def"
    bgp_vgw_id = "vgw-96f779a6"
    bgp_vgw_account = "cp-prod-pci"
    bgp_vgw_region = "eu-central-1"
    bgp_local_as_num = "65002"
}

resource "aviatrix_vgw_conn" "vgw_conn_3" {
    conn_name = "cp-prod-ore-transit-aviatrix-transit-gw-to-transit-vgw-connection"
    gw_name = "cp-prod-ore-transit-aviatrix-transit-hub-gw"
    vpc_id = "vpc-49a1cd30"
    bgp_vgw_id = "vgw-e85afef6"
    bgp_vgw_account = "cp-prod-pci"
    bgp_vgw_region = "us-west-2"
    bgp_local_as_num = "65001"
}

