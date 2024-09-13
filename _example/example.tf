provider "azurerm" {
  features {}
}

module "resource_group" {
  source                    = "./../"
  name                      = "app"
  managed_by-resource_group = null
  environment               = "test"
  location                  = "North Europe"
  resource_lock_enabled     = false
  lock_level                = "CanNotDelete"
}
