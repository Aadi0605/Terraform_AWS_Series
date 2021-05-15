Theory :

--> count is a meta-argument defined by the Terraform language. 
    It can be used with modules and with every resource type.

--> The count meta-argument accepts a whole number, and creates
    that many instances of the resource or module.
		Each instance has a distinct infrastructure object associated with it, 
and each is separately created, updated, or destroyed when the configuration is applied.

The count Object

In blocks where count is set, an additional count object is available in expressions, 
so you can modify the configuration of each instance. This object has one attribute:

--> count.index — The distinct index number (starting with 0) corresponding to this 
    instance.

example

Step : Create 5 EC2 Instances using Terraform

--> In general, 1 EC2 Instance Resource in Terraform equals to 1 EC2 Instance in Real AWS Cloud
--> 5 EC2 Instance Resources = 5 EC2 Instances in AWS Cloud
--> With Meta-Argument count this is going to become super simple.

Lets see how.

# Create EC2 Instance
resource "aws_instance" "web" {
  ami = "ami-047a51fa27710816e" # Amazon Linux
  instance_type = "t2.micro"
  count = 5
  tags = {
    "Name" = "web"
  }
}

source of data -https://www.terraform.io/docs/language/meta-arguments/count.html