📦 Task 1 – CI/CD Pipeline Using AWS CodePipeline and Terraform
📋 Overview
This task sets up a complete CI/CD pipeline using AWS CodePipeline, fully provisioned and managed through Terraform. It automates the process from source code changes to application deployment, reducing manual effort and improving consistency.

🚀 Pipeline Components
The pipeline includes the following stages:

Source: Connects to a GitHub repository to track code changes.

Build: Uses AWS CodeBuild to compile and prepare the application.

Deploy: Delivers the built application using AWS CodeDeploy or EC2.

🔧 Infrastructure Provisioned
All infrastructure is defined and deployed using Terraform, including:

AWS CodePipeline, CodeBuild, and CodeDeploy

S3 buckets for storing pipeline artifacts

IAM roles and policies required for secure access and execution

✅ Validation
Infrastructure tests were written using Terratest to ensure:

Proper creation of resources

Correct configurations of pipeline stages

Secure and expected behavior of IAM policies

📌 Outcome
The pipeline was successfully deployed and tested, forming a solid foundation for continuous integration and delivery workflows. It ensures a repeatable, scalable, and secure DevOps environment ready for further extension.
