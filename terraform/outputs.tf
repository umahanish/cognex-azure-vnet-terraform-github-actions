output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_names" {
  value = [
    azurerm_subnet.web.name,
    azurerm_subnet.app.name,
    azurerm_subnet.db.name
  ]
}