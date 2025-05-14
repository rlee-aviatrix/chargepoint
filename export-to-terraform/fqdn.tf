resource "aviatrix_fqdn" "fqdn_1" {
    fqdn_mode = "white"
    fqdn_enabled = true
    gw_filter_tag_list {
        gw_name = "cp-prod-mon-pci-aviatrix-egress-gw"
    }

    gw_filter_tag_list {
        gw_name = "cp-prod-fra-pci-aviatrix-egress-gw"
    }

    gw_filter_tag_list {
        gw_name = "cp-prod-ore-pci-aviatrix-gw"
    }

    fqdn_tag = "Payment-VPC-OutBound-Web-Whitelist"
    manage_domain_names = false
}

resource "aviatrix_fqdn" "fqdn_2" {
    fqdn_mode = "white"
    fqdn_enabled = true
    gw_filter_tag_list {
        gw_name = "cp-data-ore-prod-aviatrix-egress-gw"
    }

    fqdn_tag = "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist"
    manage_domain_names = false
}

