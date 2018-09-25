variable "windows_password" {

}

data "template_file" "powershell" {
	template = "${file("${path.module}/templates/mkdir.ps1.tpl")}"
}

resource "azurerm_virtual_machine" "2012-example__2012example" {
  name                             = "2012example"
  location                         = "uksouth"
  resource_group_name              = "2012-example"
  vm_size                          = "Standard_B1s"
  network_interface_ids            = ["${azurerm_network_interface.2012-example__2012example509.id}"]
  delete_data_disks_on_termination = "false"
  delete_os_disk_on_termination    = "false"

  os_profile {
    computer_name  = "2012example"
    admin_username = "psouter"
    admin_password = "${var.windows_password}"
    custom_data    = "${data.template_file.powershell.rendered}"
  }

  storage_os_disk {
    name          = "2012example"
    caching       = "ReadWrite"
    create_option = "FromImage"
    os_type       = "Windows"
  }

  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2012-R2-Datacenter"
    version   = "latest"
  }

  os_profile_windows_config {
    enable_automatic_upgrades = "true"
    provision_vm_agent        = "true"
  }
}
