module "vm" {
  source = "./modules/vm"

  # Pass input variables to the module
  vm_name                = var.vm_name
  location               = var.location
  vm_admin_username      = var.vm_admin_password
  vm_admin_password      = var.vm_admin_password
  vm_size                = var.vm_size
  vm_os_disk_caching     = var.vm_os_disk_caching
  vm_os_disk_storage_account_type = var.vm_os_disk_storage_account_type
  vm_image_publisher     = var.vm_image_publisher
  vm_image_offer         = var.vm_image_offer
  vm_image_sku           = var.vm_image_sku
  vm_image_version       = var.vm_image_version
  
}
module "storage" {
  source = "./modules/storage"

  # Pass input variables to the module
  resource_group_name = var.storage_resource_group_name
  storage_location = var.storage_location
  storage_account_name        = var.storage_account_name
  account_tier                = var.account_tier
  account_replication_type    = var.account_replication_type
}
