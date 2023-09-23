provider "postgresql" {
  host            = var.host
  port            = 5432
  sslmode         = "require"
  connect_timeout = 120
  superuser       = false
  username        = var.admin_username
  password        = var.admin_password
}
