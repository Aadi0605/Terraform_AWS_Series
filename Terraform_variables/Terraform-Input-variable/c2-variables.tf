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