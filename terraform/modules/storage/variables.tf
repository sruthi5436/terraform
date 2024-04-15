variable "storage_resource_group_name" {
  description = "The name of the resource group where the storage account will be created."
  type        = string
  default     = "connect"
}

variable "storage_location" {
  description = "The Azure region where the storage account will be located."
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
  default     = "testvm2s3"
}
variable "resource_group_name" {
  description = "The name of the resource group where the storage account will be created."
  type        = string
  default     = "testvm2rg"
}

variable "account_tier" {
  description = "The storage account tier (e.g., Standard, Premium)."
  type        = string
  default     = "standard"
}

variable "account_replication_type" {
  description = "The type of replication for the storage account (e.g., LRS, GRS, ZRS)."
  type        = string
  default     = "LRS"
}
