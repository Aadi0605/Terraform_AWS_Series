# Resource Block
# Resource-1: Create VPC
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  provider = aws.aws_vpc-us-west-1
  tags = {
    "Name" = "myvpc"
  }
}