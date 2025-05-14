resource "aviatrix_saml_endpoint" "saml_endpoint_1" {
    endpoint_name = "chargepoint_okta"
    idp_metadata_type = "URL"
    controller_login = true
    access_set_by = "profile_attribute"
    idp_metadata_url = "https://chargepoint.okta.com/app/exkgr7nn34KRTrH1w2p7/sso/saml/metadata"
}

