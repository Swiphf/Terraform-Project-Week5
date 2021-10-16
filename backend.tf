terraform {
  backend "azurerm" {
    resource_group_name  = "rg-weighttracker-week5"
    storage_account_name = "tfstate75mu2" 
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}