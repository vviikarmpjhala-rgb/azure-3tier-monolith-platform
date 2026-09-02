resource "azurerm_virtual_network" "dev_vnets" {
    for_each = var.dev_mono_vnets
    name=each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    address_space = each.value.address_space
  
}