resource "aviatrix_controller_config" "controller_config_1" {
    http_access = false
    target_version = "6.5.3166"
    backup_configuration = true
    backup_cloud_type = 1
    backup_account_name = "cp-prod-pci"
    backup_bucket_name = "cp-aviatrix-backup"
    multiple_backups = true
}

