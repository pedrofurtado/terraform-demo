# Terraform demo

Terraform demo. Just for fun.

## Requirements

- AWS IAM user (with access key) that have a IAM inline policy like `iam-policy.json`
- AWS S3 Bucket `my-bucket-external-state-of-terraform` created with default configs provided by AWS
- Terraform v1.7.5

## Use

```bash
# Export required environment variables
export TF_LOG=INFO
export TF_INPUT=false
export AWS_ACCESS_KEY_ID=xxx
export AWS_SECRET_ACCESS_KEY=xxx
export AWS_REGION=us-east-1
export TF_VAR_S3_BUCKET_NAME=my-bucket-external-state-of-terraform
export TF_VAR_S3_KEY=path/to/my/state.tfstate

# Init
terraform init -backend-config="bucket=$TF_VAR_S3_BUCKET_NAME" -backend-config="key=$TF_VAR_S3_KEY" -backend-config="region=$AWS_REGION"

# Lint / Validate
terraform fmt -check
terraform validate

# Plan
terraform plan

# Apply
terraform apply
```
