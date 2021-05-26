
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

--> Each terraform configuration can specify a backend , which defines where and how operations are performed , where state 
	snapshots are stored ,etc .
	
--> Where Backends are used :
		A) Backends configuration is only used by Terraform CLI.
		B) Terraform cloud and Terradorm Enterprise always use their own state storage when performing Terraform runs , So they 
		   ignore any backend block in the configuration . 
		   
--> For Terraform cloud users also it is always recommended to use backend block in terraform configuration for commands like terraform 
	taint which can be executed only using Terraform CLI .
	
--> There are two things backends will be used for :
	1. where state is stored .
	2. where operations are performed .
	
--> Store state : 						  
  1. Terraform uses persistent state data to keep track of the resources it manages .							   
  2. Everyone working with a given collection of instructure resources must be able to access to same state data(shared state storage) .		  																							
	
--> state Locking :
		state Locking is to prevent conflicts and inconsistencies when the operations are being performed  .
		
--> Operations :

1) "Operations" refers to performing APi requests against infrastructure servies in order to create , read , update, or destroy resources .	

2) Not every terraform subcommand performs API operations many of them operate on state data . 	

3) Only two backends actually perform operation : loccal and remote.

4) The remote backend can perform API operations remotely , using Terraform cloud or Terraform Enterprise .

----------------------------------------------------------------------------------------------------------------------

Terraform Backends :

Enhanced Backends - 
1) Enhanced backends can both store state and perform operations . There are only two enhanced backends : local and remote .

2) Example for remote backend performing operations : terraform cloud , Terraform enterprise .

Standard backends :

1)   Standard Backends only store state , and rely on the local backend for performing operations .

Example : AWS S3 , Azure RM , Consul , etcd , gcs http and many more  . 

---------------------------------------------------------------------------------------------------------------------------









	
	
	
	
	
	
	
	
	
	