output "storage_account_name" {
  value = azurerm_storage_account.test.name
}

output "storage_container_name" {
  value = azurerm_storage_container.test.name
}

output "sql_server" {
  value = azurerm_sql_server.test.name
}

output "sql_db" {
  value = azurerm_sql_database.db.name
}