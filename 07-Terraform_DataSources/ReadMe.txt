
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
	
-->	A data source is accessed vaia a special kind of resource known as data resource , declared using a data block .

--> Data resurce support the bprovider meta-argument as defined for managed resources, with the same syntax and behaviour.

--> Data resource do not currently have any customization setting availbale for their lifecycle , but the lifecycle nested block 
	is reserved in case any added in futuyre versions . 

--> Data resource support count and for_each meta-argument as defined for managed resourcces , with the same syntax and behaviour .

-->Each instance will separtely read from its data source with its own variant of the constraint arguments ,l producing an indexed result .