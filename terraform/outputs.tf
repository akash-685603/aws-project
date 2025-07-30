output "codestar_connection_arn" {
  description = "The ARN of the CodeStar Connection for GitHub."
  value       = aws_codestarconnections_connection.github_connection.arn
}

output "codepipeline_name" {
  description = "The name of the AWS CodePipeline."
  value       = aws_codepipeline.main.name
}

output "ec2_public_dns" {
  description = "Public DNS of the EC2 instance"
  value       = aws_instance.app_instance.public_dns
}
