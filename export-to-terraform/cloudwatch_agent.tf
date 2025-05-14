resource "aviatrix_cloudwatch_agent" "cloudwatch_agent_1" {
    cloudwatch_role_arn = "arn:aws:iam::081442359341:role/aviatrix-role-cloudwatch"
    region = "us-west-2"
    log_group_name = null
}

