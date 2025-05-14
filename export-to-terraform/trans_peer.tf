resource "aviatrix_trans_peer" "trans_peer_1" {
    source = "cp-prod-mon-nos-aviatrix-spoke-gw"
    nexthop = "cp-prod-mon-transit-aviatrix-transit-hub-gw"
    reachable_cidr = "cp-prod-mon-transit-aviatrix-transit-hub-gw-to-transit-vgw-connection-tag"
}

resource "aviatrix_trans_peer" "trans_peer_2" {
    source = "cp-prod-mon-nos-aviatrix-spoke-gw-hagw"
    nexthop = "cp-prod-mon-transit-aviatrix-transit-hub-gw-hagw"
    reachable_cidr = "cp-prod-mon-transit-aviatrix-transit-hub-gw-to-transit-vgw-connection-tag"
}

resource "aviatrix_trans_peer" "trans_peer_3" {
    source = "cp-prod-mon-pci-aviatrix-spoke-gw"
    nexthop = "cp-prod-mon-transit-aviatrix-transit-hub-gw"
    reachable_cidr = "cp-prod-mon-transit-aviatrix-transit-hub-gw-to-transit-vgw-connection-tag"
}

resource "aviatrix_trans_peer" "trans_peer_4" {
    source = "cp-prod-mon-pci-aviatrix-spoke-gw-hagw"
    nexthop = "cp-prod-mon-transit-aviatrix-transit-hub-gw-hagw"
    reachable_cidr = "cp-prod-mon-transit-aviatrix-transit-hub-gw-to-transit-vgw-connection-tag"
}

resource "aviatrix_trans_peer" "trans_peer_5" {
    source = "cp-prod-ore-nos-aviatrix-spoke-gw"
    nexthop = "cp-prod-ore-transit-aviatrix-transit-hub-gw"
    reachable_cidr = "cp-prod-ore-transit-aviatrix-transit-gw-to-transit-vgw-connection-tag"
}

resource "aviatrix_trans_peer" "trans_peer_6" {
    source = "cp-prod-ore-nos-aviatrix-spoke-gw-hagw"
    nexthop = "cp-prod-ore-transit-aviatrix-transit-hub-gw-hagw"
    reachable_cidr = "cp-prod-ore-transit-aviatrix-transit-gw-to-transit-vgw-connection-tag"
}

resource "aviatrix_trans_peer" "trans_peer_7" {
    source = "cp-prod-ore-pci-aviatrix-spoke-gw"
    nexthop = "cp-prod-ore-transit-aviatrix-transit-hub-gw"
    reachable_cidr = "cp-prod-ore-transit-aviatrix-transit-gw-to-transit-vgw-connection-tag"
}

resource "aviatrix_trans_peer" "trans_peer_8" {
    source = "cp-prod-ore-pci-aviatrix-spoke-gw-hagw"
    nexthop = "cp-prod-ore-transit-aviatrix-transit-hub-gw-hagw"
    reachable_cidr = "cp-prod-ore-transit-aviatrix-transit-gw-to-transit-vgw-connection-tag"
}

