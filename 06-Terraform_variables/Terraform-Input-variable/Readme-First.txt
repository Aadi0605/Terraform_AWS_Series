
--> Input variables serve as parameters for a Terraform module, allowing aspects of the module 
	to be customized without altering the module's own source code, and allowing modules to be 
	shared between different configurations. 
	
--> When you declare variables in the root module of your configuration, you can set their 
	values using CLI options and environment variables. When you declare them in child modules,
	the calling module should pass values in the module block.	
	
	--> Input variables are like function arguments.
	