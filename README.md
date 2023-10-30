# terraform-azure-resource-group
# Azure Resource Group Infrastructure with Terraform

This repository contains Terraform code to provision a resource group in Microsoft Azure. The resource group is designed to support an application environment for testing purposes.

## Prerequisites

Before you begin, ensure you have the following requirements in place:

- [Terraform](https://www.terraform.io/) installed on your local machine.
- An Azure subscription with the necessary permissions and credentials.

## Getting Started

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/your-repo.git
   cd your-repo
1. Initialize your Terraform workspace:

  ```bash
   terraform init
```
2. Review and customize the 'terraform.tfvars' file if necessary to set variables such as the resource group name, environment, location, and other settings.

3. Deploy the infrastructure by running:
  ```bash
terraform apply
```
You will be prompted to confirm the changes. Enter yes to proceed.

4. Once the Terraform apply process is complete, your Azure resource group and associated configurations will be provisioned.

# Configuration
The Terraform code in this repository uses the following configurations:

- Azure Location: North Europe
- Resource Group Name: app
- Environment: test
- Resource Lock Enabled: true
- Lock Level: CanNotDelete
You can modify these values in the terraform.tfvars file if necessary.

# Cleanup
To destroy the provisioned Azure resource group and associated resources, run:

   ```bash
terraform destroy
```
You will be prompted to confirm the destruction of the resources. Enter yes to proceed.

# Contributing
If you would like to contribute to this project, please follow these guidelines for code contributions and issue reporting.

# License
This project is licensed under the MIT License - see the LICENSE file for details.

For more information on using Terraform with Azure, refer to the official [Terraform Azure provider documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs).

Feel free to enhance this README with more details or relevant information about your project.
