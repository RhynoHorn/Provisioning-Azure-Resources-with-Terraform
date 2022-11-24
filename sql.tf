resource "azurerm_sql_server" "test" {
  name                         = "${var.sql_server_name}24992"
  resource_group_name          = var.resource_group_name
  location                     = var.resource_group_location
  version                      = "12.0"
  administrator_login          = var.sql_username
  administrator_login_password = var.sql_pass
}

# Creates a firewall rule, otherwise we can't access the SQL DB
resource "azurerm_sql_firewall_rule" "firewall" {
  name                = "FirewallRule1"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_sql_server.test.name
  start_ip_address    = var.ip_address
  end_ip_address      = var.ip_address
}

resource "azurerm_sql_firewall_rule" "allowAzureServices" {
  name                = "Allow_Azure_Services"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_sql_server.test.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}

resource "azurerm_sql_database" "db" {
  name                = "${var.sql_db_name}619"
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  server_name         = azurerm_sql_server.test.name
  depends_on = [
    azurerm_sql_server.test
  ]
}