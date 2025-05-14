resource "aviatrix_tunnel" "tunnel_1" {
    gw_name1 = "cp-prod-mon-pci-aviatrix-spoke-gw"
    gw_name2 = "cp-prod-mon-transit-aviatrix-transit-hub-gw"
    enable_ha = true
}

resource "aviatrix_tunnel" "tunnel_2" {
    gw_name1 = "cp-prod-mon-nos-aviatrix-spoke-gw"
    gw_name2 = "cp-prod-mon-transit-aviatrix-transit-hub-gw"
    enable_ha = true
}

resource "aviatrix_tunnel" "tunnel_3" {
    gw_name1 = "cp-prod-ore-pci-aviatrix-spoke-gw"
    gw_name2 = "cp-prod-ore-transit-aviatrix-transit-hub-gw"
    enable_ha = true
}

resource "aviatrix_tunnel" "tunnel_4" {
    gw_name1 = "cp-prod-ore-nos-aviatrix-spoke-gw"
    gw_name2 = "cp-prod-ore-transit-aviatrix-transit-hub-gw"
    enable_ha = true
}

