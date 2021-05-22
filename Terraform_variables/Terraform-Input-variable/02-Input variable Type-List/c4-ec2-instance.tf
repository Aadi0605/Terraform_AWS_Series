# Create EC2 Instance
resource "aws_instance" "my_ec2_instance01" {
  ami           = var.ec2_ami_id # Amazon Linux
  instance_type = var.ec2_instance_type
  count         = var.ec2_instance_count
  user_data              = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Welcome to AWS terraform series  ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
    EOF
	vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
	tags = {
		"Name" = "myec2instance01"
	}
}
© 2021 GitHub .
