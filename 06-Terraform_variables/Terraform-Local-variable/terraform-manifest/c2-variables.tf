#Input variable

	variable "aws_region" {
		description = " Region in which required AWS instanbce has been created"
		type 		= string
		default 	= "us-east-1"
	}
	
	# App Name S3 Bucket used for
	variable "app_name" {
		description = "Application Name"
		type = string
	}

	# Environment Name
	variable "environment_name" {
		description = "Environment Name"
		type = string
	}


#Here as we are not providing variable value for App name and env name , After appling command Terraform plan , Terraform would ask us in console .
#For putting the values 