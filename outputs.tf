output "aws_iam_role_arn" {
  description = "ARN of IAM role"
  value       = aws_iam_role.my_role.arn
}

output "aws_iam_role_name" {
  description = "Name of IAM role"
  value       = aws_iam_role.my_role.name
}

output "aws_iam_role_path" {
  description = "Path of IAM role"
  value       = aws_iam_role.my_role.path
}

output "aws_iam_role_unique_id" {
  description = "Unique ID of IAM role"
  value       = aws_iam_role.my_role.unique_id
}

output "aws_availability_zones_available" {
  description = "List of AWS availability zones"
}
