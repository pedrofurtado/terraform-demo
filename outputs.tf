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
  value = data.aws_availability_zones.available.names
}

output "iam_policy_arn" {
  description = "The ARN assigned by AWS to policy"
  value = iam_policy.arn
}

output "iam_policy_description" {
  description = "The description of the policy"
  value = iam_policy.description
}

output "iam_policy_id" {
  description = "The policy ID"
  value = iam_policy.id
}

output "iam_policy_name" {
  description = "The name of the policy"
  value = iam_policy.name
}

output "iam_policy_path" {
  description = "The path of the policy in IAM"
  value = iam_policy.path
}

output "iam_policy_policy" {
  description = "The policy document"
  value = iam_policy.policy
}
