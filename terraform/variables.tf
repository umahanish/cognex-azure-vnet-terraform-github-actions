variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-network"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "vnet-main"
}

variable "vnet_address_space" {
  description = "Address space for the VNet"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_web_prefix" {
  description = "Address prefix for the web subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_app_prefix" {
  description = "Address prefix for the app subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "subnet_db_prefix" {
  description = "Address prefix for the db subnet"
  type        = string
  default     = "10.0.3.0/24"
}