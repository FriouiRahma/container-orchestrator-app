# Terraform Block

# This  Block tells Terraform
# Which providers we want to use and their versions.
# Where to donwnload from

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.47.0"
    }
  }
}

# Terraform configuration 
# Wich cloud to talk (AWS)
# Wich region to create resources instance_type

provider "aws" {
  region = "us-east-1"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type"
  default = "t3.micro"
}

variable "instance_name" {
  type = string
  description = "EC2 instance name"
  default = "Terraform demo"
}

variable "enable_monitoring" {
  type = bool
  description = "EC2 instance monitoring"
  default = false
}

# resource Block (EC2 instance)
# This block  defines an AWS EC2 instance

resource "aws_instance" "demo_ec2" {
    ami = "ami-00e801948462f718a"
    # instance_type = "t3.micro"
    instance_type = var.instance_type
    monitoring = var.enable_monitoring

    tags = {
        Name = var.instance_name
    }
}

output "ec2_public_ip" {
  description = "public ip of the EC2 instance"
  value = aws_instance.demo_ec2.public_ip
  # sensitive = true
}
//Dev ,Staging, Prod


# resource "aws_iam_user" "demo_user" {
#   name = "terraform-demo-user"

#   tags = {
#     purpose = "terraform-demo"
#   }

# }

# resource "aws_s3_bucket" "demo_bucket" {
#   bucket = "terraform-demo-bucket-123224567890"

#   tags = {
#     purpose     = "terraform-demo"
#     Environment = "Demo"
#   }
# }

# resource "aws_s3_bucket_versioning" "demo_bucket_versioning" {
#   bucket = aws_s3_bucket.demo_bucket.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }