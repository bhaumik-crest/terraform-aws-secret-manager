# resource "aws_s3_bucket" "terraform-state" {
#   bucket = "terraform-state-11-08-2021"
#   acl    = "private"
#   force_destroy = true
#   versioning {
#     enabled = true
#   }
#   tags = {
#     Name = "Terraform State"
#   }
#   server_side_encryption_configuration {
#     rule {
#       apply_server_side_encryption_by_default {
#         sse_algorithm = "AES256"
#       }
#     }
#   }
  
# }