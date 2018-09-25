resource "azurerm_virtual_network" "2012-example__2012-example-vnet" {
  name                = "2012-example-vnet"
  location            = "uksouth"
  resource_group_name = "2012-example"

  address_space = [
    "172.17.9.0/24",
  ]

  subnet {
    name           = "default"
    address_prefix = "172.17.9.0/24"
  }
}
