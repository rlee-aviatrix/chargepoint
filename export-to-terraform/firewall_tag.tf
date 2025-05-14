resource "aviatrix_firewall_tag" "firewall_tag_1" {
    cidr_list {
        cidr = "208.71.209.32/27"
        "$$hashKey" = "object:2184"
        cidr_tag_name = "Alertlogic-Networks-1"
    }

    cidr_list {
        cidr = "204.110.218.96/27"
        "$$hashKey" = "object:2206"
        cidr_tag_name = "Alertlogic-Networks-2"
    }

    cidr_list {
        cidr = "204.110.219.96/27"
        "$$hashKey" = "object:2228"
        cidr_tag_name = "Alertlogic-Networks-3"
    }

    cidr_list {
        cidr = "185.54.124.0/24"
        "$$hashKey" = "object:7689"
        cidr_tag_name = "Alertlogic-Networks-4"
    }

    firewall_tag = "Alertlogic-Outbound-Traffic"
}

