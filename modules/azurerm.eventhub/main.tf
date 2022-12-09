# Get resource group data
data "azurerm_resource_group" "storage" {
  name = var.rg_name
}

resource "azurerm_eventhub_namespace" "event_hub" {
  name                = var.eventhub_namespace_name
  location            = data.azurerm_resource_group.storage.location
  resource_group_name = data.azurerm_resource_group.storage.name
  sku                 = var.eventhub_namespace_sku
  capacity            = var.eventhub_namespace_capacity
}

resource "azurerm_eventhub" "event_hub" {
  name                = var.eventhub_name
  namespace_name      = azurerm_eventhub_namespace.event_hub.name
  resource_group_name = data.azurerm_resource_group.storage.name
  partition_count     = var.eventhub_partition_count
  message_retention   = var.eventhub_message_retention
}