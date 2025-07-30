resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  key_name               = var.key_name
  subnet_id              = var.subnet_ids[count.index]
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  associate_public_ip_address = true # ✅ Add this line

  count = length(var.subnet_ids)

  tags = {
    Name = "web-${count.index}"
  }
}
