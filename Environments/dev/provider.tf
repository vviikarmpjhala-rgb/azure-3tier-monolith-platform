terraform {
  required_version = ">= 1.9.4"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>5.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "mono_dev_rg1"
    storage_account_name = "monodevrg1sto1"
    container_name       = "monodevrg1con"
    key                  = "dev.terraform.tfvars"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "0b96a7da-226d-4293-92f4-84932716a1d4"

}