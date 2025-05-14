resource "aviatrix_transit_gateway" "transit_gateway_1" {
    single_az_ha = true
    gw_name = "cp-prod-fra-pci-transit-aviatrix-hub-gw"
    vpc_id = "vpc-87085def"
    cloud_type = 1
    vpc_reg = "eu-central-1"
    connected_transit = true
    enable_active_mesh = true
    gw_size = "t3a.medium"
    account_name = "cp-prod-pci"
    subnet = "172.21.123.64/27"
    enable_encrypt_volume = true
    local_as_number = "65002"
    ha_subnet = "172.21.123.96/27"
    ha_gw_size = "t3a.medium"
}

resource "aviatrix_transit_gateway" "transit_gateway_2" {
    gw_name = "cp-prod-mon-transit-aviatrix-transit-hub-gw"
    vpc_id = "vpc-0551f59a1b60c8b26"
    cloud_type = 1
    vpc_reg = "ca-central-1"
    connected_transit = true
    gw_size = "t3.micro"
    account_name = "cp-prod-pci"
    subnet = "172.23.123.64/27"
    prepend_as_path = [ 
        "65001"
    ]
    local_as_number = "65001"
    ha_subnet = "172.23.123.96/27"
    ha_gw_size = "t3.small"
}

resource "aviatrix_transit_gateway" "transit_gateway_3" {
    gw_name = "cp-prod-ore-transit-aviatrix-transit-hub-gw"
    vpc_id = "vpc-49a1cd30"
    cloud_type = 1
    vpc_reg = "us-west-2"
    connected_transit = true
    gw_size = "c5n.large"
    account_name = "cp-prod-pci"
    subnet = "172.20.123.64/27"
    local_as_number = "65001"
    ha_subnet = "172.20.123.96/27"
    ha_gw_size = "c5n.large"
}

