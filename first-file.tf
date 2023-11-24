resource "azurerm_resource_group" "rg-loc-name" {
  name = "rg-dev"
  location = "eastus" 
}
resource "azurerm_public_ip" "ip-loc-name" {
  name = "dev-pub-ip"  
  location = azurerm_resource_group.rg-loc-name.location
  resource_group_name = azurerm_resource_group.rg-loc-name.name
  allocation_method = "Static"

  }
resource "azurerm_storage_account" "storage-loc-name" {
  name = "rmr1storage"
  location = azurerm_resource_group.rg-loc-name.location
  resource_group_name = azurerm_resource_group.rg-loc-name.name
  account_tier = "Standard"
  account_replication_type = "GRS"
}