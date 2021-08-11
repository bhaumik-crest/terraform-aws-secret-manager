resource "aws_secretsmanager_secret" "example" {
  name = "example"
}

resource "aws_secretsmanager_secret_version" "example-value" {
  secret_id     = aws_secretsmanager_secret.example.id
  secret_string = "example-string-to-protect-final-version"
  version_stages = [var.version-label,"AWSCURRENT"]
}

data "aws_secretsmanager_secret" "example" {
  name = "example"
  
}

data "aws_secretsmanager_secret_version" "example-value" {
  secret_id = data.aws_secretsmanager_secret.example.id
}