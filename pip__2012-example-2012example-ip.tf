resource "azurerm_public_ip" "2012-example__2012example-ip" {
  name                         = "2012example-ip"
  location                     = "uksouth"
  resource_group_name          = "2012-example"
  public_ip_address_allocation = "Dynamic"
  sku                          = "Basic"
}
