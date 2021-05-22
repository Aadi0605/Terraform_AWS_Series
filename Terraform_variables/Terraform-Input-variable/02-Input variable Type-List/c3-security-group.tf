#create security group 
	
	#SSH Traffic 

		resource "aws_security_group" "vpc-ssh" {
		
			name 		= "vpc-ssh"
			description = "DEV VPC SSH"
			ingress {
				
				description = "Allow port 22"
				from_port 	= 22
				to_port 	= 22
				protocol 	= "tcp"
				cidr_blocks = ["0.0.0.0/0"]
			}
			egress {
				
				description = "Allow port 22"
				from_port 	= 22
				to_port 	= 22
				protocol 	= "tcp"
				cidr_blocks = ["0.0.0.0/0"]
			
			}
		}	
		
	#Web traffic 

		resource "aws_security_group" "vpc-web" {
		
			name 		= "vpc-web"
			description = "DEV WEB SSH"
			ingress	{
				
				description = "Allow port 80"
				from_port 	= 80
				to_port 	= 80
				protocol 	= "tcp"
				cidr_blocks = ["0.0.0.0/0"]
			}
			egress {
				
				description = "Allow port 443"
				from_port 	= 443
				to_port 	= 443
				protocol 	= "tcp"
				cidr_blocks = ["0.0.0.0/0"]
			
			}
			egress {
				
				description = "Allow all IP and port"
				from_port 	= 0
				to_port 	= 0
				protocol 	= "-1"
				cidr_blocks = ["0.0.0.0/0"]
			
			}
		}	
	