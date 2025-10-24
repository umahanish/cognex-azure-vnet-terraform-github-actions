variable "resource_group_name" {
  default = "rg-tfstate"
}

variable "location" {
  default = "East US"
}

variable "container_name" {
  description = "Name of the blob container for Terraform state"
  type        = string
  default     = "tfstate"
}

variable "environment" {
  description = "Deployment environment (e.g., dev, prod)"
  type        = string
  default     = "dev"
}

