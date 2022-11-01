provider "aws" {
  region                   = "ap-northeast-1"
  shared_credentials_files = [var.credentials_file]

  assume_role {
    role_arn = var.role_arn
  }
}

variable "credentials_file" {
  type    = string
  default = "./.credentials"
}

variable "role_arn" {
  type    = string
  default = "<YourRoleArn>"
}

resource "aws_dynamodb_table" "exam" {
  name           = "Exam-<YourName>"
  billing_mode   = "PROVISIONED"
  read_capacity  = 2
  write_capacity = 2
  hash_key       = "UserId"
  range_key      = "GameTitle"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "GameTitle"
    type = "S"
  }
}
