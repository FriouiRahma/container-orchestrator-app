output "ec2_public_ip" {
  description = "public ip of the EC2 instance"
  value = aws_instance.demo_ec2.public_ip
  # sensitive = true
}

output "ec2_instance_id" {
  description = "EC2 instance ID"
  value = aws_instance.demo_ec2.id
}

output "s3_bucket_name" {
  description = "S3 bucket name"
  value = aws_s3_bucket.demo_bucket.bucket
}

output "iam_user_name" {
  description = "IAM user name created by terraform"
  value = aws_iam_user.demo_user.name
}