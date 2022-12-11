#terraform {
#  backend "azurerm" {
#    resource_group_name  = ""
#    storage_account_name = ""
#    container_name       = ""
#    key                  = ""
#  }
#}


provider "azurerm" {
  features {}
}

module "azure-storage-account" {
  source                 = "./modules/azurerm.storageaccount"
  rg_name                = var.rg_name
  storage_name           = var.storage_name
  storage_container_list = var.storage_container_list
}

module "azure-eventhub" {
  source  = "./modules/azurerm.eventhub"
  rg_name = var.rg_name

  eventhub_name              = var.eventhub_name
  eventhub_message_retention = var.eventhub_message_retention
  eventhub_partition_count   = var.eventhub_partition_count

  eventhub_namespace_name     = var.eventhub_namespace_name
  eventhub_namespace_sku      = var.eventhub_namespace_sku
  eventhub_namespace_capacity = var.eventhub_namespace_capacity
}
