resource "aviatrix_account" "account_1" {
    account_name = "cp-data-prod"
    cloud_type = 1
    aws_account_number = "377777732287"
    aws_iam = true
    aws_role_app = ""
    aws_role_ec2 = ""
    aws_access_key = ""
    aws_secret_key = ""
}

resource "aviatrix_account" "account_2" {
    account_name = "cp-prod"
    cloud_type = 1
    aws_account_number = "022521842517"
    aws_iam = true
    aws_role_app = ""
    aws_role_ec2 = ""
    aws_access_key = ""
    aws_secret_key = ""
}

resource "aviatrix_account" "account_3" {
    account_name = "cp-prod-pci"
    cloud_type = 1
    aws_account_number = "081442359341"
    aws_iam = true
    aws_role_app = ""
    aws_role_ec2 = ""
    aws_access_key = ""
    aws_secret_key = ""
}

