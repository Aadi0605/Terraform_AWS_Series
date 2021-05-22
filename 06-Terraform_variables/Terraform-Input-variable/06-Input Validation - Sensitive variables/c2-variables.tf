#Input variable

	variable "aws_region" {
		description = " Region in which required AWS instanbce has been created"
		type 		= string
		default 	= "us-east-1"
	}
	
	variable "db_username" {
		description = "AWS RDS database administration username"
		type 		= string
		sensitive 	= true 
	}
	
	variable "db_password" {
		description = "AWS RDS database administration password"
		type 		= string
		sensitive	= true
		}