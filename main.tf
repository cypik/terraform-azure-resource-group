module "labels" {
  source      = "cypik/labels/azure"
  version     = "1.0.2"
  name        = var.name
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
  repository  = var.repository
  extra_tags  = var.extra_tags
}

resource "azurerm_resource_group" "rg" {
  count      = var.enabled ? 1 : 0
  name       = format("%s-resource-group", module.labels.id)
  location   = var.location
  managed_by = var.managed_by_resource_group
  tags       = module.labels.tags

  timeouts {
    create = var.create
    read   = var.read
    update = var.update
    delete = var.delete
  }
}

resource "azurerm_management_lock" "resource_group_level" {
  count      = var.enabled && var.resource_lock_enabled ? 1 : 0
  name       = format("%s-rg-lock", var.lock_level)
  scope      = join("", azurerm_resource_group.rg[*].id)
  lock_level = var.lock_level
  notes      = "This Resource Group is locked by terrafrom"
}