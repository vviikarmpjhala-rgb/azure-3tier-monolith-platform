resource "azurerm_resource_group" "env-dev-rgs" {
  for_each = var.dev_rgs
  name     = each.value.name
  location = each.value.location
  tags = {
    managed_by = "devteam"
    owner      = "Vviikarm P Jhala"
  }
}