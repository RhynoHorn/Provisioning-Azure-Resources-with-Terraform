# Connecting an Azure subscription provided by ACloudGuru sandbox
resource "azurerm_storage_account" "test" {
  name                     = "${var.storage_account_name_prefix}54806terra"
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "test" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.test.name
  container_access_type = "private"
}

# adds the data file into the container
resource "azurerm_storage_blob" "multi" {
  for_each = fileset(path.module, "samples/*")
  name                   = trim(each.key, "samples/")
  storage_account_name   = azurerm_storage_account.test.name
  storage_container_name = azurerm_storage_container.test.name
  type                   = "Block"
  source                 = each.key
}