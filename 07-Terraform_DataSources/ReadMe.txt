
--> Data sources allow data to be fetched or computed for use elsewhere in Terraform configuration. 

--> Use of data sources allows a Terraform configuration to make use of information defined outside
    of Terraform, or defined by another separate Terraform configuration.
	
--> Each provider may offer data sources alongside its set of resource types.

--> Using Data Sources
	Example : 

		data "aws_ami" "example" {
			most_recent = true	

			owners = ["self"]
			tags = {
				Name   = "app-server"
				Tested = "true"
			}
		}
		
--> A data block requests that Terraform read from a given data source ("aws_ami") and export the result 
	under the given local name ("example"). 	

--> The name is used to refer to this resource from elsewhere in the same Terraform module, but has no 
	significance outside of the scope of a module.	
	
-->	