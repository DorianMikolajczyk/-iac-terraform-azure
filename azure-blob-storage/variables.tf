variable "resource_name" {
  type = string
  default = "example-resources"
}
variable "resource_location" {
  type = string
  default="europe"
}
variable "storage_account_name" {
  type = string
  default="examplestoracc"
}
variable "storage_account_replication" {
  type = string
  default="grs"
}
variable "tags_env" {
  type = string
  default="staging"
}
variable "azurerm_storage_name" {
  type = string
  default="vhds"
  container_access_type = "private"
  storage_account_name  = azurerm_storage_account.example.name
}
variable "azurerm_storage_container" {
  type = string
  default="private":
  storage_account_name  = azurerm_storage_account.example.name
}
variable "azurerm_storage_blob_name" {
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type = string
  default="my-awesome-content.zip"
}
variable "azurerm_storage_blob_type" {
  type = string
  default="Block"
}
variable "azurerm_storage_blob_source" {
  type = string
  default="some-local-file.zip"
} 