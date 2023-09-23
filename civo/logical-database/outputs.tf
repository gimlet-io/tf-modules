output "credentials" {
  value = [for user in postgresql_role.app_user: "${user.name}: ${user.password}"]
  sensitive = true
}
