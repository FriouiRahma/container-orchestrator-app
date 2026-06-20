module "demo-stack" {
  source = "../../modules/demo-stack"
    ami_id = var.ami_id
    instance_type = var.instance_type
    instance_name = var.instance_name
    enable_monitoring = var.enable_monitoring
    environment = var.environment

    iam_user_name = var.iam_user_name
    iam_purpose = var.iam_purpose

    bucket_name = var.bucket_name
    bucket_purpose = var.bucket_purpose
    enable_versioning = var.enable_versioning
}

output "ec2_instance_id" {
  value = module.demo-stack.ec2_instance_id
}

output "ec2_public_ip" {
    value = module.demo-stack.ec2_public_ip
}

output "ec2_private_ip" {
    value = module.demo-stack.ec2_private_ip
}
output "ec2_instance_arn" {
    value = module.demo-stack.ec2_instance_arn
}
output "iam_user_name" {
    value = module.demo-stack.iam_user_name
}
output "s3_bucket_arn" {
    value = module.demo-stack.s3_bucket_arn
}