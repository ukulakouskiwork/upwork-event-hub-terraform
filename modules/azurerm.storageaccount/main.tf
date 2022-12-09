# Get resource group data
data "azurerm_resource_group" "storage" {
  name = var.rg_name
}

# Create storage account
resource "azurerm_storage_account" "storage" {
  name                      = var.storage_name
  resource_group_name       = data.azurerm_resource_group.storage.name
  location                  = data.azurerm_resource_group.storage.location
  account_tier              = var.account_tier              # "Standard"
  account_kind              = var.account_kind              # "StorageV2"
  account_replication_type  = var.account_replication_type  # "LRS"
  min_tls_version           = var.min_tls_version           # "TLS1_2"
  access_tier               = var.access_tier               # "Hot"
  large_file_share_enabled  = var.large_file_share_enabled  # true
  enable_https_traffic_only = var.enable_https_traffic_only # true
  is_hns_enabled            = var.is_hns_enabled            # false
}

# Create containers in storage account
resource "azurerm_storage_container" "storage" {
  for_each = toset(var.storage_container_list)
  storage_account_name  = azurerm_storage_account.storage.name
  name                  = each.value
  container_access_type = var.container_access_type # private
}