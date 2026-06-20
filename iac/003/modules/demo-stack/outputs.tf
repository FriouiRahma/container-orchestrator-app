output "ec2_public_ip" {
  description = "public ip of the EC2 instance"
  value = aws_instance.demo_ec2.public_ip
}

output "ec2_private_ip" {
  description = "private ip of the EC2 instance"
  value = aws_instance.demo_ec2.private_ip
}

output "ec2_instance_arn" {
  description = "ARN of the EC2 instance"
  value = aws_instance.demo_ec2.arn
}

output "ec2_instance_id" {
  description = "EC2 instance ID"
  value = aws_instance.demo_ec2.id
}

output "s3_bucket_name" {
  description = "S3 bucket name"
  value = aws_s3_bucket.demo_bucket.bucket
}

output "s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value = aws_s3_bucket.demo_bucket.arn
}

output "iam_user_name" {
  description = "IAM user name created by terraform"
  value = aws_iam_user.demo_user.name
}

output "iam_user_arn" {
  description = "ARN of the IAM user"
  value = aws_iam_user.demo_user.arn
}