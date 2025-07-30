output "ec2_public_ip" {
  value = [for instance in aws_instance.web : instance.public_ip]
}

output "ec2_public_dns" {
  value = [for instance in aws_instance.web : instance.public_dns]
}

output "pipeline_name" {
  value = aws_codepipeline.main.name
}
