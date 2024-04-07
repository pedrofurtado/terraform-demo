variable "S3_BUCKET_NAME" {
  type = string
  # example: "my-bucket-external-state-of-terraform"
}

variable "S3_KEY" {
  type = string
  # example: "path/to/my/state.tfstate"
}
