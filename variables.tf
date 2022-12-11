variable "rg_name" {
  description = "The name of the resource group where the eventhub should be created."
  type        = string
  default = ""
}

variable "location" {
  description = "Region where your resources should be created."
  type        = string
  default = "centralus" #for example
}

variable "storage_name" {
  description = "The name of the storage account"
  type        = string
  default = "saeventhub"
}

variable "storage_container_list" {
  description = "List of containers that will be created in your storage account"
  type        = list(any)
  default = []
}


variable "eventhub_namespace_name" {
  description = "Name of the eventhub namespace."
  type        = string
  default = "eh-namespace-test" # for example
}


variable "eventhub_namespace_sku" {
  description = "Defines which tier to use. Valid options are Basic, Standard, and Premium"
  type        = string
  default = "Standard"
}


variable "eventhub_namespace_capacity" {
  description = "pecifies the Capacity / Throughput Units for a Standard SKU namespace. Default capacity has a maximum of 2, but can be increased in blocks of 2 on a committed purchase basis."
  type        = number
  default = 2
}

variable "eventhub_name" {
  description = "Name of the eventhub."
  type        = string
  default = "ev-eventhub"
}

variable "eventhub_partition_count" {
  description = "Specifies the current number of shards on the Event Hub."
  type        = number
  default = 2
}

variable "eventhub_message_retention" {
  description = "Specifies the number of days to retain the events for this Event Hub."
  type        = number
  default = 1
}

