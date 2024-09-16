provider "azurerm" {
  features {}
}

module "resource_group" {
  source                = "./../"
  name                  = "app"
  environment           = "test"
  location              = "North Europe"
  resource_lock_enabled = false
  lock_level            = "CanNotDelete"
}
