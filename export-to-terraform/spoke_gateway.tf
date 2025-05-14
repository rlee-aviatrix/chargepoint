resource "aviatrix_spoke_gateway" "spoke_gateway_1" {
    gw_name = "cp-prod-fra-nos-aviatrix-spoke-gw"
    vpc_id = "vpc-0d5f1365"
    cloud_type = 1
    vpc_reg = "eu-central-1"
    enable_active_mesh = true
    gw_size = "t2.micro"
    account_name = "cp-prod"
    subnet = "172.21.90.0/23"
    included_advertised_spoke_routes = "172.21.64.0/19,10.162.0.0/16"
    ha_subnet = "172.21.92.0/23"
    ha_gw_size = "t2.micro"
    manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "spoke_gateway_2" {
    gw_name = "cp-prod-fra-pci-aviatrix-spoke-gw"
    vpc_id = "vpc-675c100f"
    cloud_type = 1
    vpc_reg = "eu-central-1"
    enable_active_mesh = true
    gw_size = "c5.large"
    account_name = "cp-prod-pci"
    subnet = "172.21.122.128/26"
    ha_subnet = "172.21.122.192/26"
    ha_gw_size = "c5.large"
    manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "spoke_gateway_3" {
    gw_name = "cp-prod-mon-nos-aviatrix-spoke-gw"
    vpc_id = "vpc-0fe28693963a06d16"
    cloud_type = 1
    vpc_reg = "ca-central-1"
    gw_size = "t3.micro"
    account_name = "cp-prod"
    subnet = "172.23.90.0/23"
    included_advertised_spoke_routes = "172.23.64.0/19,10.163.0.0/16"
    ha_subnet = "172.23.92.0/23"
    ha_gw_size = "t3.micro"
    manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "spoke_gateway_4" {
    gw_name = "cp-prod-mon-pci-aviatrix-spoke-gw"
    vpc_id = "vpc-0c5113662d5d0b049"
    cloud_type = 1
    vpc_reg = "ca-central-1"
    gw_size = "t3.micro"
    account_name = "cp-prod-pci"
    subnet = "172.23.122.128/26"
    ha_subnet = "172.23.122.192/26"
    ha_gw_size = "t3.micro"
    manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "spoke_gateway_5" {
    gw_name = "cp-prod-ore-nos-aviatrix-spoke-gw"
    vpc_id = "vpc-49500930"
    cloud_type = 1
    vpc_reg = "us-west-2"
    gw_size = "c5n.large"
    account_name = "cp-prod"
    subnet = "172.20.90.0/23"
    included_advertised_spoke_routes = "10.161.0.0/16,172.20.124.0/24,172.20.64.0/19"
    ha_subnet = "172.20.92.0/23"
    ha_gw_size = "c5n.large"
    manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "spoke_gateway_6" {
    gw_name = "cp-prod-ore-pci-aviatrix-spoke-gw"
    vpc_id = "vpc-d095b7a9"
    cloud_type = 1
    vpc_reg = "us-west-2"
    gw_size = "t2.medium"
    account_name = "cp-prod-pci"
    subnet = "172.20.122.128/26"
    ha_subnet = "172.20.122.192/26"
    ha_gw_size = "t2.medium"
    manage_transit_gateway_attachment = false
}

