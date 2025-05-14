resource "aviatrix_firewall" "firewall_1" {
    base_policy = "deny-all"
    base_log_enabled = false
    manage_firewall_policies = false
    gw_name = "cp-prod-fra-pci-aviatrix-egress-gw"
}

resource "aviatrix_firewall" "firewall_2" {
    base_policy = "deny-all"
    base_log_enabled = false
    manage_firewall_policies = false
    gw_name = "cp-prod-ore-pci-aviatrix-gw"
}

resource "aviatrix_firewall" "firewall_3" {
    base_policy = "deny-all"
    base_log_enabled = false
    manage_firewall_policies = false
    gw_name = "cp-prod-mon-pci-aviatrix-egress-gw"
}

