variable "resource_group_location" {
  default     = "East US"
  type        = string
  description = "Location of the resource group."
}

variable "resource_group_name" {
  default     = "1-58efe28d-playground-sandbox" # Change if you created a personal Azure sandbox account
  type        = string
  description = "Name of your resource group, or that created by ACG Sandbox"
}

variable "storage_account_name_prefix" {
  default     = "teststoreacc" # Change to your liking
  type        = string
  description = "Prefix of the storage account name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "container_name" {
  default     = "storey" # Change the storage container to your liking 
  type        = string
  description = "Name of your storage container"
}

variable "sql_server_name" {
  default     = "myexamplesqlserver"
  type        = string
  description = "Name of your SQL Server"
}

variable "sql_username" {
  default     = "user22493" # Change if you wish to
  type        = string
  description = "Username for SQL Server"
}

variable "sql_pass" {
  default     = "P@SSw0rd1121" # Change if you wish to
  type        = string
  description = "Password for SQL Server"
}

variable "sql_db_name" {
  default     = "myexamplesqldb"
  type        = string
  description = "Name of your SQL Server"
}

variable "ip_address" {
  default     = "86.170.13.217" # What is my IP
  type        = string
  description = "Your IP Address"
}