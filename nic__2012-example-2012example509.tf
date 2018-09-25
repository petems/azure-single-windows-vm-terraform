resource "azurerm_network_interface" "2012-example__2012example509" {
  name                          = "2012example509"
  resource_group_name           = "2012-example"
  location                      = "uksouth"
  network_security_group_id     = "${azurerm_network_security_group.2012-example__2012example-nsg.id}"
  enable_ip_forwarding          = "false"
  enable_accelerated_networking = "false"

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = "${azurerm_subnet.2012-example__default.id}"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = "${azurerm_public_ip.2012-example__2012example-ip.id}"
    primary                       = "true"
  }
}
