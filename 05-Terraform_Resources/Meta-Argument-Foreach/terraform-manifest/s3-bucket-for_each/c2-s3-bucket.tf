# Create S3 bucket

	resource "aws_s3_bucket" "Aadis3bucket"{
	
		for_each = {
		
			dev  = "my-dapp-bucket"
			qa   = "my-qapp-bucket"
			uat  = "my-uapp-bucket"
			prod = "my-papp-bucket"
		}
		bucket = "${each.key}-${each.value}"
		acl    = "private"
		
		tags = {
			Enviornment = each.key
			bucketname	= "${each.key}-${each.value}"
			eachvalue	= each.value			
		}
	}	