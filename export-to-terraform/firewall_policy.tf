resource "aviatrix_firewall_policy" "firewall_policy_1" {
    gw_name = "cp-prod-fra-pci-aviatrix-egress-gw"
    src_ip = "172.21.122.10"
    dst_ip = "Alertlogic-Outbound-Traffic"
    protocol = "tcp"
    port = "4138"
    action = "allow"
    log_enabled = false
    description = "Event transport"
}

resource "aviatrix_firewall_policy" "firewall_policy_2" {
    gw_name = "cp-prod-fra-pci-aviatrix-egress-gw"
    src_ip = "172.21.122.10"
    dst_ip = "Alertlogic-Outbound-Traffic"
    protocol = "tcp"
    port = "443"
    action = "allow"
    log_enabled = false
    description = "Updates"
}

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

resource "aviatrix_firewall_policy" "firewall_policy_4" {
    gw_name = "cp-prod-ore-pci-aviatrix-gw"
    src_ip = "172.20.122.53"
    dst_ip = "Alertlogic-Outbound-Traffic"
    protocol = "tcp"
    port = "443"
    action = "allow"
    log_enabled = false
    description = "Updates"
}

resource "aviatrix_firewall_policy" "firewall_policy_5" {
    gw_name = "cp-prod-mon-pci-aviatrix-egress-gw"
    src_ip = "172.23.122.53"
    dst_ip = "Alertlogic-Outbound-Traffic"
    protocol = "tcp"
    port = "4138"
    action = "allow"
    log_enabled = false
    description = "Event transport"
}

resource "aviatrix_firewall_policy" "firewall_policy_6" {
    gw_name = "cp-prod-mon-pci-aviatrix-egress-gw"
    src_ip = "172.23.122.53"
    dst_ip = "Alertlogic-Outbound-Traffic"
    protocol = "tcp"
    port = "443"
    action = "allow"
    log_enabled = false
    description = "Updates"
}

