
--> A local value assigns a name to an expression, so you can use it multiple times within a module without repeating it.

--> Local values are like a function's temporary local variables.

--> Declaring a Local Value
	Example: locals {
				service_name = "forum"
				owner        = "Community Team"
			}
			
-->The expressions in local values are not limited to literal constants; they can also reference other values in the module
   in order to transform or combine them, including variables, resource attributes, or other local values:	

Example : 
		locals {
			# Ids for multiple sets of EC2 instances, merged together
		instance_ids = concat(aws_instance.blue.*.id, aws_instance.green.*.id)
	}

	locals {
	# Common tags to be assigned to all resources
		common_tags = {
		Service = local.service_name
		Owner   = local.owner
		}
	}
	
--> Local values can be helpful to avoid repeating the same values or expressions multiple times in a configuration, but if 
	overused they can also make a configuration hard to read by future maintainers by hiding the actual values used.	