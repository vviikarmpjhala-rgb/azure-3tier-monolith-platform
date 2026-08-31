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
    storage_account_name = "monodevrg1sto"
    container_name       = "monodevrg1con"
    key                  = "dev.terraform.tfvars"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "bfab1c9c-cf90-4ad8-8ab7-40918bce79a9"

}