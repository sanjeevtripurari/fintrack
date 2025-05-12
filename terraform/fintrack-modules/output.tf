# output.tf
output "instance_id" {
  value = module.fintrack.instance_id
}

output "public_ip" {
  value = module.fintrack.public_ip
}

output "security_group_id" {
  value = module.fintrack.security_group_id
}

output "s3_bucket_arn" {
  value = module.fintrack.s3_bucket_arn
}

output "ssh_port" {
  value = module.fintrack.ssh_port
}
