# terraform {
#   backend "s3" {
#     bucket = "terraform-state-11-08-2021"
#     key    = "terraform/state"
#     region = "us-east-2"
#   }
# }
terraform {
  backend "remote" {
    organization = "crest-data-systems1"

    workspaces {
      name = "aws-secret-manager"
    }
  }
}