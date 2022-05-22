resource "azurerm_resource_group" "example" {
  name     = var.resource_name
  location = var.resource_location
}
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication

  tags = {
    environment = var.tags_env
  }
}

resource "azurerm_storage_container" "example" {
  name                  = var.azurerm_storage_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = var.azurerm_storage_container
}
resource "azurerm_storage_blob" "example" {
  name                   = var.azurerm_storage_blob_name
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = var.azurerm_storage_blob_type
  source                 = var.azurerm_storage_blob_source
}