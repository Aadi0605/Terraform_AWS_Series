#Input variable

	variable "aws_region" {
		description = " Region in which required AWS instanbce has been created"
		type 		= string
		default 	= "us-east-1"
	}
	
	#implementing validation rules and also taking substr build in function 
	
	variable "ec2_ami_id" {
		description = " choosed ami id "
		type 		= string 
		default 	= "ami-047a51fa27710816e" #Amazon Linux
		validation {
		
			condition 		= length.(var.ec2_ami_id)>5 && substr(var.ec2_ami_id, 0,4) == "ami-"
			error_message	= "The ec2 value must have a valid AMI Id , starting bwith "ami-"
		
		}
	
	
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
	
	variable "ec2_instance_tags" {
		description = "EC2 Instance tags"
		type        = map(string)
		default     = {
			"Name"	= "ec2-web"
			"Tier"	= "web"
	}