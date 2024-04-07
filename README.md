# Terraform demo

Terraform demo. Just for fun.

```bash
alias terraform="docker container run --rm --name terraform-in-docker -it -v $(pwd):/app -w /app hashicorp/terraform:1.7.5"
cd my-folder/
terraform init
terraform plan
terraform apply # or terraform apply -auto-approve
```
