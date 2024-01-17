variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "repository" {
  type        = string
  default     = "https://github.com/cypik/terraform-azure-resource-group.git"
  description = "Terraform current module repo"
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(any)
  default     = ["name", "environment", ]
  description = "Label order, e.g. `name`,`application`."
}

variable "managedby" {
  type        = string
  default     = "cypik"
  description = "ManagedBy, eg 'cypik'."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Flag to control the module creation."
}

variable "location" {
  type        = string
  default     = ""
  description = "Location where resource should be created."
}

variable "create" {
  type        = string
  default     = "90m"
  description = "Used when creating the Resource Group."
}

variable "read" {
  type        = string
  default     = "5m"
  description = "Used when retrieving the Resource Group."
}

variable "update" {
  type        = string
  default     = "90m"
  description = "Used when updating the Resource Group."
}

variable "delete" {
  type        = string
  default     = "90m"
  description = "Used when deleting the Resource Group."
}

variable "resource_lock_enabled" {
  type        = bool
  default     = false
  description = "enable or disable lock resource"
}

variable "lock_level" {
  type    = string
  default = "CanNotDelete"
}