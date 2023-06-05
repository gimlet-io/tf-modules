variable "database" {
  type = string
}

variable "user" {
  type = string
}

variable "server_id" {
  type = string
  sensitive = true
}

variable "tenant_id" {
  type = string
  sensitive = true
}

variable "subscription_id" {
  type = string
  sensitive = true
}

variable "client_id" {
  type = string
  sensitive = true
}

variable "client_secret" {
  type = string
  sensitive = true
}

variable "host" {
  type = string
  sensitive = true
}

variable "admin_username" {
  type = string
  sensitive = true
}

variable "admin_password" {
  type = string
  sensitive = true
}
