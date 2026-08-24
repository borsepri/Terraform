resource "azurerm_resource_group" "demo" {
  name     = "example-resources-TF"
  location = "UK South"
}

##  Demo now
resource "azurerm_storage_account" "StorageAccountDemo" {
  name                     = "Storage_account_terraform"
  resource_group_name      = azurerm_resource_group.demo.name
  location                 = azurerm_resource_group.demo.location
  account_tier             = "Standard"
  account_replication_type = "GRS"


}
