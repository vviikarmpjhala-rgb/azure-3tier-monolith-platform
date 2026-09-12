data "azurerm_subnet" "dev_mono_bastion_subnet" {
  for_each             = var.dev_mono_bastions
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.rg_name
}
data "azurerm_public_ip" "dev_mono_bastion_pip" {
  for_each            = var.dev_mono_bastions
  name                = each.value.public_ip_name
  resource_group_name = each.value.rg_name
}

resource "azurerm_bastion_host" "dev_mono_bastion" {
  for_each            = var.dev_mono_bastions
  name                = each.value.bastion_host_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                 = each.value.bastion_host_name
    subnet_id            = data.azurerm_subnet.dev_mono_bastion_subnet[each.key].id
    public_ip_address_id = data.azurerm_public_ip.dev_mono_bastion_pip[each.key].id
  }
}