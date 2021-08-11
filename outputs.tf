output "secret-value" {
  value = data.aws_secretsmanager_secret_version.example-value.secret_string
  sensitive = true
}

output "secret-id" {
  value = data.aws_secretsmanager_secret_version.example-value.version_id
}