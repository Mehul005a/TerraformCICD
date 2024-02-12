terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.90.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "TerraformRG"
    storage_account_name = "statefilemehul"
    container_name       = "statefile"
    key                  = "practice.terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}
