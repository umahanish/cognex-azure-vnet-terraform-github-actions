variable "resource_group_name" {
  default = "rg-dev"
}

variable "location" {
  default = "East US"
}

variable "storage_account_name" {
  default = "tfstate${random_string.suffix.result}"
}

variable "container_name" {
  default = "tfstate"
}

resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}