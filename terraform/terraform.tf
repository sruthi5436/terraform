provider "azurerm" {
  features {}
}
terraform {
  required_version = ">= 1.3"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.11.0"  # Specify the exact version you want to use
    }
  }
}






