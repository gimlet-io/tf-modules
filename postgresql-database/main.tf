terraform {
  required_providers {
    postgresql = {
        source = "cyrilgdn/postgresql"
    }
  }
}

resource "postgresql_database" "db" {
  name              = var.database
  template          = "template0"
  lc_collate        = "en_US.UTF-8"
  connection_limit  = 100
}

resource "postgresql_role" "app_user" {
  name     = var.username
  login    = true
  password = var.password
}

resource "postgresql_grant" "grant" {
  database    = postgresql_database.db.name
  role        = postgresql_role.app_user.name
  schema      = "public"
  object_type = "schema"
  privileges  = []
}
