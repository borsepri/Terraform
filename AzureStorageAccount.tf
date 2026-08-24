resource "azurerm_resource_group" "demo" {
  name     = "rg_terraform_pri"
  location = "UK South"
}

##  Demo now
resource "azurerm_storage_account" "StorageAccountDemo" {
  name                     = "sa_terrform_pri"
  resource_group_name      = azurerm_resource_group.demo.name
  location                 = azurerm_resource_group.demo.location
  account_tier             = "Standard"
  account_replication_type = "GRS"


}
