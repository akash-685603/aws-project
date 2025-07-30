resource "aws_instance" "web" {
  ami           = "ami-0c2b8ca1dad447f8a"  # Amazon Linux 2 AMI (for us-east-1)
  instance_type = "t2.micro"
  subnet_id     = subnet_id = var.subnet_id[0]
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.web_sg.id]
  iam_instance_profile   = aws_iam_instance_profile.ec2_instance_profile.name

  tags = {
    Name = "WebServer"
  }
}
