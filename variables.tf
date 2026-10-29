variable "resource_group_name" {
  description = "Name of the Azure resource group."
  type        = string
}

variable "location" {
  description = "Azure location for all resources."
  type        = string
  default     = "westeurope"
}

variable "prefix" {
  description = "Prefix used in resource names."
  type        = string
  default     = "spike"
}

variable "address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
  default     = ["10.50.0.0/16"]
}

variable "subnet_prefixes" {
  description = "Subnet address prefixes."
  type        = list(string)
  default     = ["10.50.1.0/24"]
}

variable "vm_size" {
  description = "Azure VM SKU."
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Admin username for the Linux VM."
  type        = string
  default     = "azureuser"
}

variable "admin_ssh_public_key" {
  description = "SSH public key for VM access."
  type        = string
}
