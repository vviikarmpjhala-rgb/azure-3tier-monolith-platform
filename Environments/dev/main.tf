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

module "dev_public_ip" {
  depends_on    = [module.dev_rgs]
  source        = "../../modules/azurerm_public_ip"
  dev_mono_pips = var.dev_mono_pips
}

module "dev_linux_vms" {
  depends_on   = [module.dev_rgs, module.dev_vnets, module.dev_subnet]
  source       = "../../modules/azurerm_linux_virtual_machine"
  dev_mono_vms = var.dev_mono_vms
}
module "azurerm_bastions" {
  depends_on        = [module.dev_rgs, module.dev_vnets, module.dev_subnet, module.dev_public_ip]
  source            = "../../modules/azurerm_bastion_host"
  dev_mono_bastions = var.dev_mono_bastions

}

module "nat_gateway" {
  depends_on      = [module.dev_public_ip, module.dev_subnet]
  source          = "../../modules/azurerm_nat_gataway"
  dev_nat_gateway = var.dev_nat_gateway

}