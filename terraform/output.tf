output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.nodejs_server.public_ip
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.nodejs_server.id
}

output "app_url" {
  description = "URL to access the Node.js app"
  value       = "http://${aws_instance.nodejs_server.public_ip}"
}

output "private_key" {
  description = "The generated private key. Save this in GitHub Secrets!"
  value       = tls_private_key.ssh.private_key_pem
  sensitive   = true
}
