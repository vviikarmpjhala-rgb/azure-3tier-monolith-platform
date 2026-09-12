resource "azurerm_public_ip" "dev_mono_pips" {
  for_each            = var.dev_mono_pips
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method

  tags = {
    environment = "dev"
  }
}