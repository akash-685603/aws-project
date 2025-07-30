region       = "us-east-1"
ami_id       = "ami-0c02fb55956c7d316"  # Example Amazon Linux 2 AMI in us-east-1 (update if needed)
instance_type = "t2.micro"
key_name     = "webserver"
vpc_id       = "vpc-04275fad85f2c6c69"
subnet_id = ["subnet-03ff27db34f534cb7", "subnet-0282cc4ebb7b99102"]
