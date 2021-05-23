
--> Terraform must store state about your managed infrastructure and configuration. 

--> This state is used by Terraform to map real world resources to your configuration, keep track of metadata,
	and to improve performance for large infrastructures.
	
--> This state is stored by default in a local file named "terraform.tfstate", but it can also be stored remotely,
	which works better in a team environment.	
	
--> Backends are responsible for storing state and providing an API for state locking .

		i.e 	Terraform state storage = AWS S3 bucket , Azure Blob storage .
				Terraform state Locking = AWS DynamoDB  , Azure resource lock .
				 		
-->	Local state file : Multiple team members cannot update the infrastructure as they dont have access to state file .
			i.e This means we need store the state file in a shared location . 
			
			
			Admin 1 --- Admin 2 --- Admin 3
			| 				|			|
			|				|			|
			|				|			|
			Admin 1		   ***		    ***
			Desktop
			

--> Remote state file : 			