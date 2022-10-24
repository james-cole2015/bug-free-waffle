variable "AWS_ACCESS_KEY_ID" {
    type = string
}
variable "AWS_SECRET_ACCESS_KEY" {
    type = string
}

terraform {
  cloud {
    organization = "friends_of_fate_903"

    workspaces {
      name = "new-test-workspace"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}




provider "aws" {
  region = "us-east-1"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}