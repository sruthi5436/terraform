output "vm_public_ip" {
  description = "The public IP address of the virtual machine."
  value       = azurerm_public_ip.example.ip_address
}

output "vm_private_ip" {
  description = "The private IP address of the virtual machine."
  value       = azurerm_network_interface.example.private_ip_address
}

output "vm_username" {
  description = "The admin username for the virtual machine."
  value       = var.vm_admin_username
}
