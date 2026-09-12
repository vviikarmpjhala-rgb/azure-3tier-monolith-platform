data "azurerm_public_ip" "dev_mono_nat_gateway" {
  for_each            = var.dev_nat_gateway
  name                = each.value.public_ip_name
  resource_group_name = each.value.rg_name
}

resource "azurerm_nat_gateway" "dev_mono_nat_gateway" {
  for_each            = var.dev_nat_gateway
  name                = each.value.nat_gatway_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  sku_name            = "Standard"
}

resource "azurerm_nat_gateway_public_ip_association" "example" {
  for_each             = var.dev_nat_gateway
  nat_gateway_id       = azurerm_nat_gateway.dev_mono_nat_gateway[each.key].id
  public_ip_address_id = data.azurerm_public_ip.dev_mono_nat_gateway[each.key].id
}