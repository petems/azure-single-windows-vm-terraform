resource "azurerm_network_security_group" "2012-example__2012example-nsg" {
  name                = "2012example-nsg"
  location            = "uksouth"
  resource_group_name = "2012-example"

  security_rule {
    name                       = "RDP"
    access                     = "Allow"
    priority                   = "300"
    protocol                   = "TCP"
    direction                  = "Inbound"
    source_port_range          = "*"
    source_address_prefix      = "*"
    destination_port_range     = "3389"
    destination_address_prefix = "*"
  }
}
