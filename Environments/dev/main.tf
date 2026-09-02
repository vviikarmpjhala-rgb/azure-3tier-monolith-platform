#This is module for dev environment put right dependency and variable values in this module. 
module "dev_rgs" {
  source  = "../../modules/azurerm_resource_group"
  dev_rgs = var.dev_rgs
}

module "dev_vnets" {
  depends_on     = [module.dev_rgs]
  source         = "../../modules/azurerm_virtual_network"
  dev_mono_vnets = var.dev_mono_vnets
}

module "dev_subnet" {
  depends_on      = [module.dev_rgs, module.dev_vnets]
  source          = "../../modules/azurerm_subnet"
  dev_mono_subnet = var.dev_mono_subnet
}