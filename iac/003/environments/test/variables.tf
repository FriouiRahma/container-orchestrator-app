variable "aws_region" {
  type = string
  description = "AWS region to create resources"
}

variable "ami_id" {
  type = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type"
}

variable "instance_name" {
  type = string
  description = "EC2 instance name"
}

variable "enable_monitoring" {
  type = bool
  description = "EC2 instance monitoring"
}

variable "environment" {
  type = string
  description = "Environment name (e.g., dev, staging, prod)"
}

variable "iam_user_name" {
  type = string
  description = "IAM user name"
}

variable "iam_purpose" {
  type = string
  description = "Purpose of the IAM user"
}

variable "bucket_name" {
  type = string
  description = "Name of the S3 bucket"
}

variable "bucket_purpose" {
  type = string
  description = "Purpose of the S3 bucket"
}

variable "enable_versioning" {
  type = bool
  description = "Whether to enable versioning for the S3 bucket"
  default = false
}