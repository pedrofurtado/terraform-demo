resource "aws_iam_role" "my_role" {
  name = "role_created_by_terraform"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = "sid-${data.aws_availability_zones.available.names[0]}"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  inline_policy {
    name = "my_inline_policy"

    policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Action   = ["ec2:*"]
          Effect   = "Allow"
          Resource = "*"
        },
      ]
    })
  }

  inline_policy {
    name = "another_inline_policy"

    policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Action   = ["iam:*"]
          Effect   = "Deny"
          Resource = "*"
        },
      ]
    })
  }

  tags = {
    lorem = "ipsum",
    region = data.aws_availability_zones.available.names[1]
  }
}
