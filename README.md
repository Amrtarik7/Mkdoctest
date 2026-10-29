# vmnet-poc

Korte PoC module voor stap 1 van de spike: een deploybare Azure VNet + Subnet + Linux VM.

## Snel starten

1. Login:
   az login
2. Init:
   terraform init
3. Plan:
   terraform plan -var="resource_group_name=rg-spike-docs" -var="admin_ssh_public_key=ssh-rsa AAAA..."
4. Apply:
   terraform apply -auto-approve -var="resource_group_name=rg-spike-docs" -var="admin_ssh_public_key=ssh-rsa AAAA..."

## Terraform-docs markers

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 4.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | Address space for the virtual network. | `list(string)` | <pre>[<br/>  "10.50.0.0/16"<br/>]</pre> | no |
| <a name="input_admin_ssh_public_key"></a> [admin\_ssh\_public\_key](#input\_admin\_ssh\_public\_key) | SSH public key for VM access. | `string` | n/a | yes |
| <a name="input_admin_username"></a> [admin\_username](#input\_admin\_username) | Admin username for the Linux VM. | `string` | `"azureuser"` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure location for all resources. | `string` | `"westeurope"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Prefix used in resource names. | `string` | `"spike"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the Azure resource group. | `string` | n/a | yes |
| <a name="input_subnet_prefixes"></a> [subnet\_prefixes](#input\_subnet\_prefixes) | Subnet address prefixes. | `list(string)` | <pre>[<br/>  "10.50.1.0/24"<br/>]</pre> | no |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | Azure VM SKU. | `string` | `"Standard_B2s"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | Resource group name. |
| <a name="output_virtual_network_name"></a> [virtual\_network\_name](#output\_virtual\_network\_name) | Virtual network name. |
| <a name="output_vm_id"></a> [vm\_id](#output\_vm\_id) | Virtual machine resource ID. |
| <a name="output_vm_public_ip"></a> [vm\_public\_ip](#output\_vm\_public\_ip) | Public IP of the VM. |
<!-- END_TF_DOCS -->
