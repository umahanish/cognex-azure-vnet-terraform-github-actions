variable "resource_group_name" {
  default = "rg-tfstate"
}

variable "location" {
  default = "East US"
}

variable "container_name" {
  default = "tfstate"
}

resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}