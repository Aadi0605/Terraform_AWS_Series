#Input variable

	variable "aws_region" {
		description = " Region in which required AWS instanbce has been created"
		type 		= string
		default 	= "us-east-1"
	}
	
	variable "ec2_ami_id" {
		description = " choosed ami id "
		type 		= string 
		default 	= "ami-047a51fa27710816e"
	}
	
	variable "ec2_instance_count" {
		description = "EC2 Instance Count"
		type        = number
		default     = 2
	}
	
	variable "ec2_instance_type" {
		description = "EC2 Instance type"
		type        = list(string)
		default     = ["t3.micro" , "t3.small" , "t3.large"]
	}