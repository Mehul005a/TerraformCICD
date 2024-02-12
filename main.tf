resource "azurerm_resource_group" "example" {
  name     = "TerraformRG"
  location = "West Europe"
}
resource "azurerm_resource_group" "example1" {
  name     = "TerraformRG1"
  location = "West Europe"
}
resource "azurerm_resource_group" "example2" {
  name     = "TerraformRG2"
  location = "West Europe"
}

resource "azurerm_storage_account" "SA" {
  name                     = "tarunsa"
  resource_group_name      = azurerm_resource_group.example1.name
  location                 = azurerm_resource_group.example1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}