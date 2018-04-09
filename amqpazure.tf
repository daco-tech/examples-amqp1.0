# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "<yourid>"
  tenant_id       = "<yourtenantid>"
}


resource "azurerm_resource_group" "dc" {
  name     = "Daniel Costa Examples"
  location = "West Europe"
}

resource "azurerm_servicebus_namespace" "sbus" {
  name                = "definedname"
  location            = "${azurerm_resource_group.dc.location}"
  resource_group_name = "${azurerm_resource_group.dc.name}"
  sku                 = "standard"

  tags {
    source = "danielcosta"
  }
}

resource "azurerm_servicebus_queue" "example" {
  name                = "queuename"
  resource_group_name = "${azurerm_resource_group.dc.name}"
  namespace_name      = "${azurerm_servicebus_namespace.sbus.name}"

  enable_partitioning = true
}

output "amqp_cs" {
  value = "${azurerm_servicebus_namespace.sbus.default_primary_connection_string}"
}
