resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_1" {
    spoke_gw_name = "cp-prod-fra-pci-aviatrix-spoke-gw"
    transit_gw_name = "cp-prod-fra-pci-transit-aviatrix-hub-gw"
}

resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_2" {
    spoke_gw_name = "cp-prod-ore-pci-aviatrix-spoke-gw"
    transit_gw_name = "cp-prod-ore-transit-aviatrix-transit-hub-gw"
}

resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_3" {
    spoke_gw_name = "cp-prod-fra-nos-aviatrix-spoke-gw"
    transit_gw_name = "cp-prod-fra-pci-transit-aviatrix-hub-gw"
}

resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_4" {
    spoke_gw_name = "cp-prod-mon-nos-aviatrix-spoke-gw"
    transit_gw_name = "cp-prod-mon-transit-aviatrix-transit-hub-gw"
}

resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_5" {
    spoke_gw_name = "cp-prod-ore-nos-aviatrix-spoke-gw"
    transit_gw_name = "cp-prod-ore-transit-aviatrix-transit-hub-gw"
}

resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_6" {
    spoke_gw_name = "cp-prod-mon-pci-aviatrix-spoke-gw"
    transit_gw_name = "cp-prod-mon-transit-aviatrix-transit-hub-gw"
}

