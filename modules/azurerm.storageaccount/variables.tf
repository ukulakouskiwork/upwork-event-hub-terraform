variable "rg_name" {
  description = "Name of the resource group to be imported."
  type        = string
}

variable "storage_name" {
  description = "Name of storage account to be created."
  type        = string
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account."
  type        = string
  default     = "Standard"
}

variable "account_kind" {
  description = "Defines the Kind of account."
  type        = string
  default     = "StorageV2"
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account."
  type        = string
  default     = "LRS"
}

variable "min_tls_version" {
  description = "The minimum supported TLS version for the storage account."
  type        = string
  default     = "TLS1_2"
}

variable "access_tier" {
  description = "Defines the access tier for BlobStorage, FileStorage and StorageV2"
  type        = string
  default     = "Hot"
}

variable "is_hns_enabled" {
  description = "Is Hierarchical Namespace enabled?"
  type        = bool
  default     = false
}

variable "large_file_share_enabled" {
  description = "Is Large File Share Enabled?"
  type        = bool
  default     = true
}

variable "enable_https_traffic_only" {
  description = "Boolean flag which forces HTTPS if enabled"
  type        = bool
  default     = true
}

variable "storage_container_list" {
  description = "List of containers that must be created in storage account"
  type = list
}

variable "container_access_type" {
  description = "The Access Level configured for this Container"
  type = string
  default = "private"
}