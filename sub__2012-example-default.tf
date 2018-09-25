resource "azurerm_subnet" "2012-example__default" {
  name                 = "default"
  virtual_network_name = "2012-example-vnet"
  address_prefix       = "172.17.9.0/24"
  resource_group_name  = "2012-example"
}
