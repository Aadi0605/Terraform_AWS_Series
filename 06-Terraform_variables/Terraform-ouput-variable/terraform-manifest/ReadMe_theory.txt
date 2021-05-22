
--> Output values are like the return values of a Terraform module, and have several uses:

	--> A root module can use outputs to print certain values in the CLI output after running terraform apply.

	--> A child module can use outputs to expose a subset of its resource attributes to a parent module.

	--> When using remote state, root module outputs can be accessed by other configurations via a terraform_remote_state data source.

--> Declaring an Output Value
	Example :
	
		output "instance_ip_addr" {
			value = aws_instance.server.private_ip
		}
		
--> sensitive — Suppressing Values in CLI Output
	#An output can be marked as containing sensitive material using the optional sensitive argument:

	output "db_password" {
		value       = aws_db_instance.db.password
		description = "The password for logging in to the database."
		sensitive   = true
	}
	
--> Since output values are just a means for passing data out of a module, it is usually not necessary to worry about their relationships
	with other nodes in the dependency graph.

	#depends_on — Explicit Output Dependencies

	output "instance_ip_addr" {
		value       = aws_instance.server.private_ip
		description = "The private IP address of the main server instance."

	depends_on = [
		# Security group rule must be created before this IP address could
		# actually be used, otherwise the services will be unreachable.
		aws_security_group_rule.local_access,
		]
	}
	
##	The depends_on argument should be used only as a last resort. When using it, always include a comment explaining why it is being used, to 
	help future maintainers understand the purpose of the additional dependency.	
