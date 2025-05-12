output "app_url" {
    value = "http://${aws_instance.fintrack.public_dns}:5001"
    description = "FinTrack Application"
}