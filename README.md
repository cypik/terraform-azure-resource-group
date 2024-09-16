# Terraform-azure-resource group

# Terraform Azure Cloud Resource Group Module

## Table of Contents
- [Introduction](#introduction)
- [Usage](#usage)
- [Examples](#examples)
- [Authors](#authors)
- [License](#license)
- [Inputs](#inputs)
- [Outputs](#outputs)

## Introduction
This Terraform module creates an Azure Resource Group along with additional configuration options.


## Usage
Use the module by referencing its source and providing the required variables.

## Example: Resource Group

```hcl
    module "resource_group" {
      source                    = "cypik/resource-group/azure"
      version                   = "1.0.2"
      name                      = "app"
      environment               = "test"
      location                  = "North Europe"
      resource_lock_enabled     = false
      managed_by_resource_group = null
      lock_level                = "CanNotDelete"
}
```

## Examples
For detailed examples on how to use this module, please refer to the [example](https://github.com/cypik/terraform-azure-resource-group/blob/master/_example) directory within this repository.

## Authors
Your Name
Replace **MIT** and **Cypik** with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.


## License
 This project is licensed under the **MIT** License - see the [LICENSE](https://github.com/cypik/terraform-azure-resource-group/blob/master/LICENSE) file for details.




<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 4.2.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | cypik/labels/azure | 1.0.2 |

## Resources

| Name | Type |
|------|------|
| [azurerm_management_lock.resource_group_level](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_lock) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Used when creating the Resource Group. | `string` | `"90m"` | no |
| <a name="input_delete"></a> [delete](#input\_delete) | Used when deleting the Resource Group. | `string` | `"90m"` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Flag to control the module creation. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Additional tags (e.g. map(`BusinessUnit`,`XYZ`). | `map(string)` | `{}` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. `name`,`application`. | `list(any)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | Location where resource should be created. | `string` | `""` | no |
| <a name="input_lock_level"></a> [lock\_level](#input\_lock\_level) | n/a | `string` | `"CanNotDelete"` | no |
| <a name="input_managed_by_resource_group"></a> [managed\_by\_resource\_group](#input\_managed\_by\_resource\_group) | The ID of the resource or application that manages this Resource Group. | `string` | `null` | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | ManagedBy, eg 'info@cypik.com' | `string` | `"info@cypik.com"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| <a name="input_read"></a> [read](#input\_read) | Used when retrieving the Resource Group. | `string` | `"5m"` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Terraform current module repo | `string` | `"https://github.com/cypik/terraform-azure-resource-group"` | no |
| <a name="input_resource_lock_enabled"></a> [resource\_lock\_enabled](#input\_resource\_lock\_enabled) | enable or disable lock resource | `bool` | `false` | no |
| <a name="input_update"></a> [update](#input\_update) | Used when updating the Resource Group. | `string` | `"90m"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_managed_by_resource_group"></a> [managed\_by\_resource\_group](#output\_managed\_by\_resource\_group) | The managed\_by property of the Azure Resource Group. This indicates the resource manager responsible for the resource group. |
| <a name="output_resource_group_id"></a> [resource\_group\_id](#output\_resource\_group\_id) | The ID of the Resource Group. |
| <a name="output_resource_group_location"></a> [resource\_group\_location](#output\_resource\_group\_location) | The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. |
| <a name="output_tags"></a> [tags](#output\_tags) | A mapping of tags which should be assigned to the Resource Group. |
<!-- END_TF_DOCS -->