output "instance_id" {
  value = aws_instance.cicd-instance.id
}

output "instance_public_ip" {
  value = aws_instance.cicd-instance.public_ip
}

output "instance_private_ip" {
  value = aws_instance.cicd-instance.private_ip
}