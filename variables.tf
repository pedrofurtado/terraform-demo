variable "AWS_ACCESS_KEY" {
  type = string
}

variable "AWS_SECRET_KEY" {
  type = string
}

variable "AWS_REGION" {
  type = string
  # example: "us-east-1"
}

variable "S3_BUCKET_NAME" {
  type = string
  # example: "my-bucket-external-state-of-terraform"
}

variable "S3_KEY" {
  type = string
  # example: "path/to/my/state.tfstate"
}
