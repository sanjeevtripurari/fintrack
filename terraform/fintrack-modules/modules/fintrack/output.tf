# modules/fintrack/output.tf

output "instance_id" {
  value = aws_instance.this.id
}

output "public_ip" {
  value = aws_instance.this.public_ip
}

output "security_group_id" {
  value = aws_security_group.this.id
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.this.arn
}

output "ssh_port" {
  value = var.ssh_port
}
