terraform {
  required_version = "1.7.5"

  required_providers {
    aws = "5.44.0"
  }

  backend "s3" {}
}
