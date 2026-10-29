output "resource_group_name" {
  description = "Resource group name."
  value       = azurerm_resource_group.this.name
}

output "virtual_network_name" {
  description = "Virtual network name."
  value       = azurerm_virtual_network.this.name
}

output "vm_public_ip" {
  description = "Public IP of the VM."
  value       = azurerm_public_ip.this.ip_address
}

output "vm_id" {
  description = "Virtual machine resource ID."
  value       = azurerm_linux_virtual_machine.this.id
}
