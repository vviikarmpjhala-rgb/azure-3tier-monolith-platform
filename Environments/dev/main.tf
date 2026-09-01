#This is module for dev environment put right dependency and variable values in this module. 
module "dev-rgs" {
  source  = "../../modules/azurerm_resource_group"
  dev_rgs = var.dev_rgs
}
