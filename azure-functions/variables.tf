variable "resource_group" {
  type = string
  default = "name"
}
variable "location" {
  type = string
  default="europe"
}
variable "storage_account" {
  type = string
  default = "GRS"	
  account_tier = standard
  account_replication_type = grs
}
variable "name.example-app-service-plan" {
  type = string
  default = "azure-functions-test-service-plan"
  os_type = os_profile_linux_config
  sku_name = sku
}
variable "os_profile_linux_config"{
  type = string
  default = "os_profile_linux_config" 
}
variable "sku"{
  type = string
  default = "standard"
}
variable "sku"{
  type = string
  default = "s1"
}
variable "vazurerm_linux_function_app" {
  type = string
  default = "example-linux-function-app"
}
variable "azurerm_service_plan" {
type = string
default "service_sku_name"
}
variable "azurerm_function_app" {
  type = string
  default = "test-azure-functions"
}