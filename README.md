# terraform-azure-resource-group
# Terraform Infrastructure as Code (IaC) - Azure Resource Group Module

## Table of Contents
- [Introduction](#Introduction)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Authors](#authors)
- [License](#license)

## Introduction
This Terraform module creates an Azure Resource Group along with additional configuration options.

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed
- Azure subscription and credentials set up

## Usage



1. Use the module by referencing its source and providing the required variables.

    ```hcl
    module "resource_group" {
      source      = "git::https://github.com/cypik/terraform-azure-resource-group.git?ref=v1.0.0"
      name        = "app"
      environment = "test"
      location    = "North Europe"

      resource_lock_enabled = true
      lock_level            = "CanNotDelete"
    }
    ```

2. Run `terraform init` and `terraform apply` to create the Azure Resource Group.

## Module Inputs

- `name`: The name of the resource group.
- `environment`: The environment (e.g., "test", "production").
- `location`: The Azure region for the resource group.
- `resource_lock_enabled`: Enable or disable resource lock (true/false).
- `lock_level`: The lock level (e.g., "CanNotDelete").

## Module Outputs

- This module currently does not provide any outputs.


## Authors
- This module was created by [Your Name] and can be found in [Your GitHub Repository URL].

If you have any questions, issues, or suggestions related to this module, please feel free to open an issue on the repository.

Happy Terraforming!

## License
- This project is licensed under the MIT License - see the [LICENSE](https://github.com/cypik/terraform-azure-resource-group/blob/master/LICENSE) file for details.



