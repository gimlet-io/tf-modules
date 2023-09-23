variable "database" {
  type = string
}

variable "user" {
  type = string
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
