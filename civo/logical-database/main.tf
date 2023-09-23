terraform {
  required_providers {
    postgresql = {
        source = "cyrilgdn/postgresql"
    }
  }
}

resource "random_password" "password" {
  length           = 24
  special          = false
}

resource "postgresql_database" "db" {
  name              = var.database
  template          = "template0"
  lc_collate        = "DEFAULT"
  connection_limit  = 100
}

resource "postgresql_role" "app_user" {
  name     = var.user
  login    = true
  password = random_password.password.result
}

resource "postgresql_grant" "grant" {
  database    = postgresql_database.db.name
  role        = postgresql_role.app_user.name
  schema      = "public"
  object_type = "schema"
  privileges  = []
}
