variable "resource_group_name" {
  description = "The name of the resource group where the VM will be created."
  type        = string
  default = "testvm2rg"
}

variable "location" {
  description = "The Azure region where the VM will be located."
  type        = string
  default = "east us"
}

variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
  default     = "testvm2"
}
variable "os_disk_size_gb" {
  description = "The size of the OS disk for the virtual machine (in gigabytes)."
  type        = number
  default     = 1
}
variable "vm_admin_username" {
  description = "The username for the VM administrator"
  type        = string
  default     = "adminuser"
}

variable "vm_admin_password" {
  description = "The password for the VM administrator"
  type        = string
  default     = "Password1234!"
}

variable "vm_size" {
  description = "The size of the VM"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "vm_os_disk_caching" {
  description = "The caching type for the OS disk"
  type        = string
  default     = "ReadWrite"
}

variable "vm_os_disk_storage_account_type" {
  description = "The storage account type for the OS disk"
  type        = string
  default     = "Standard_LRS"
}

variable "vm_image_publisher" {
  description = "The publisher of the VM image"
  type        = string
  default     = "Canonical"
}

variable "vm_image_offer" {
  description = "The offer of the VM image"
  type        = string
  default     = "UbuntuServer"
}

variable "vm_image_sku" {
  description = "The SKU of the VM image"
  type        = string
  default     = "18.04-LTS"
}

variable "vm_image_version" {
  description = "The version of the VM image"
  type        = string
  default     = "latest"
}

