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