module "vnet" {
  source              = "../../modules/vnet"
  vnet_name           = "prod-vnet"
  address_space       = ["10.1.0.0/16"]
  location            = var.location
  resource_group_name = var.azurerm_resource_group
  tags                = { environment = "prod" }

  subnets = [
    {
      name            = "prod-subnet1"
      address_prefixes = ["10.1.1.0/24"]
    }
  ]
}

resource "azurerm_storage_account" "blob" {
  name                     = "prodstorageacct123"
  resource_group_name      = var.azurerm_resource_group
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}