provider "azurerm" {
  features {}
}

# Resource Group for backend storage
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}


# Storage Account for Terraform state
resource "azurerm_storage_account" "tfstate" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  enable_https_traffic_only = true

  blob_properties {
    versioning_enabled = true
  }
}

# Blob Container for storing Terraform state
resource "azurerm_storage_container" "tfstate" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}