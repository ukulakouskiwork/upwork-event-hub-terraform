variable "rg_name" {
  description = ""
  type        = string
}

variable "location" {
  description = ""
  type        = string
}

variable "storage_name" {
  description = ""
  type        = string
}

variable "storage_container_list" {
  description = ""
  type        = list(any)
}


variable "eventhub_namespace_name" {
  description = "Name of the resource group to be imported."
  type        = string
}


variable "eventhub_namespace_sku" {
  description = "Name of the resource group to be imported."
  type        = string
}


variable "eventhub_namespace_capacity" {
  description = "Name of the resource group to be imported."
  type        = string
}

variable "eventhub_name" {
  description = "Name of the resource group to be imported."
  type        = string
}

variable "eventhub_partition_count" {
  description = "Name of the resource group to be imported."
  type        = number
}

variable "eventhub_message_retention" {
  description = "Name of the resource group to be imported."
  type        = number
}

