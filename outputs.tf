# This output will be used to get a password for the app virtual machine from the user
output "app_password" {
  value = var.app_password
}

# This output will be used to get a password for the db virtual machine from the user
output "db_password" {
  value = var.db_password
}

# This output is used to export a list of nics id to the main "main.tf"
output "nic_id_list" {
  value = module.virtual_machines_app.*.nic_ids.id
}

# This output is used to export a list of private ip's to the main "main.tf"
output "app_vms_private_ips" {
  value = module.virtual_machines_app.*.nic_ids_ip_config
}

