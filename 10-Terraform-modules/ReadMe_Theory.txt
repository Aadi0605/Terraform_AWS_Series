******Terraform Modules*********

--> A module is a container for multiple resources that are used together. A modules consists of a collection of .tf files kept together
	in a  directory .
	
--> Modules are the main way to package and reuse resources configuration with terraform .

--> Every terraform configuration has at least one module ,known as its root module , which consists of the resourcesdefined on the .tf 
	files  in the main working directory .

--> A Terraform Module(Usually the root module of a configuration) can call other modules to include to include their resource into their 
	configuration .

--> A module that has been called by another module is often referred to as a child module . 
 	
--> Standard Module Structure
	** Root module - This is the only required element for the standard module structure. Terraform files must exist in the root directory
	of the repository. This should be the primary entrypoint for the module and is expected to be opinionated. 
	
--> main.tf, variables.tf, outputs.tf. These are the recommended filenames for a minimal module, even if they're empty. main.tf should be 
	the primary entrypoint. 
	
--> child modules can be called multiple times within the same configuration , and multiple configurations can use the same child module .

-->In addition to modules from the local filesystem , Terraform can load modules from a public or private registry .

--> This makes it possible to publish modules for others to use , and to use modules that others have published . 	

--> 