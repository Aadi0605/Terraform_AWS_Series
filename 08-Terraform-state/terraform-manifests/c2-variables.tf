#Input variable

	variable "aws_region" {
		description = " Region in which required AWS instanbce has been created"
		type 		= string
		default 	= "us-east-1"
	}
	
	variable "ec2_instance_type" {
		description = "EC2 Instance type"
		type        = list(string)
		default     = ["t3.micro" , "t3.small" , "t3.large"]
	}
	
	