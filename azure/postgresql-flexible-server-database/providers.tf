provider "azurerm" {
  features {}
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}

provider "postgresql" {
  host            = var.host
  port            = 5432
  sslmode         = "require"
  connect_timeout = 120
  superuser       = false
  username        = var.admin_username
  password        = var.admin_password
}
