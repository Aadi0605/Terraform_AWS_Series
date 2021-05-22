
--> Setting a variable as sensitive prevents Terraform from showing its value in the plan or apply output, when you use that variable 
	elsewhere in your configuration.
	
--> Terraform will still record sensitive values in the state, and so anyone who can access the state data will have access to the 
	sensitive values in cleartext.
	
--> Declare a variable as sensitive by setting the sensitive argument to true:
	Example:
	
			variable "user_information" {
				type = object({
					name    = string
					address = string
				})
				sensitive = true
			}

			resource "some_resource" "a" {
			name    = var.user_information.name
			address = var.user_information.address
		}

--> Any expressions whose result depends on the sensitive variable will be treated as sensitive themselves .

--> In some cases where you use a sensitive variable inside a nested block .
				-->			Terraform may treat the entire block as redacted. This happens for resource types where all of the blocks
							of a particular type are required to be unique, and so disclosing the content of one block might imply the 
							content of a sibling block.
							
-->A provider can also declare an attribute as sensitive, which will cause Terraform to hide it from regular output regardless of how 
	you assign it a value.

-->	Source 
	URL for provider - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance
	URL for theory   - https://www.terraform.io/docs/language/values/variables.html

	