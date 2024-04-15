resource "azurerm_resource_group" "example" {
  name     = var.storage_account_name
  location = var.storage_location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = var.storage_resource_group_name
  location                 = var.storage_location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

output "storage_account_name" {
  value = var.storage_account_name
}


