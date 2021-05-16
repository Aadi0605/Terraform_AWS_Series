# Create multiple iamuser

		resource "aws_iam_user" "myuser" {
		
			for_each = toset(["Jigyasu" , "Aaditya" , "Ayushi" , "Ankit" ])
			name = each.key
		
		}

	