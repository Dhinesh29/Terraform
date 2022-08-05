terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.50.0"
    }
  }
}

provider "aws" {
  region     = "ap-southeast-1"
  access_key = "AKIAQQGQE6DEEQRZSUJG"
  secret_key = "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"
}
