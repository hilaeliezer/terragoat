Skip to content


	•	  In this repository All GitHub ↵  Jump to ↵  
	•	No suggested jump to results 
	•	  In this repository All GitHub ↵  Jump to ↵  
	•	  In this organization All GitHub ↵  Jump to ↵  
	•	  In this repository All GitHub ↵  Jump to ↵  
	•	
Dashboard Pull requests Issues
Marketplace 
Explore Codespaces Sponsors Settings ￼ hilaeliezer
Sign out 



New repository Import repository New gist New organization 
￼ 

Sorry, something went wrong. 




bridgecrewio  /   checkov  /  

Tip: Type # to search pull requests 
Type ? for help and tips 
Tip: Type # to search issues 
Type ? for help and tips 
Tip: Type # to search discussions 
Type ? for help and tips 
Tip: Type ! to search projects 
Type ? for help and tips 
Tip: Type @ to search teams 
Type ? for help and tips 
Tip: Type @ to search people and organizations 
Type ? for help and tips 
Tip: Type > to activate command mode 
Type ? for help and tips 
Tip: Go to your accessibility settings to change your keyboard shortcuts 
Type ? for help and tips 
Tip: Type author:@me to search your content 
Type ? for help and tips 
Tip: Type is:pr to filter to pull requests 
Type ? for help and tips 
Tip: Type is:issue to filter to issues 
Type ? for help and tips 
Tip: Type is:project to filter to projects 
Type ? for help and tips 
Tip: Type is:open to filter to open content 
Type ? for help and tips 

We’ve encountered an error and some results aren't available at this time. Type a new search or try again later. 
No results matched your search Search for issues and pull requests # Search for issues, pull requests, discussions, and projects # Search for organizations, repositories, and users @ Search for projects ! Search for files / Activate command mode > Search your issues, pull requests, and discussions # author:@me Search your issues, pull requests, and discussions # author:@me Filter to pull requests # is:pr Filter to issues # is:issue Filter to discussions # is:discussion Filter to projects # is:project Filter to open issues, pull requests, and discussions # is:open 

bridgecrewio / checkov Public 
	•	Watch 54  Notifications  Participating and @mentions  Only receive notifications from this repository when participating or @mentioned.   All Activity  Notified of all notifications on this repository.   Ignore  Never be notified.    Custom   Select events you want to be notified of in addition to participating and @mentions.   Get push notifications on iOS or Android.      
	•	Fork 627 
	•	Starred 4.3k  Star 4.3k        

	•	Code 
	•	Issues 197 
	•	Pull requests 9 
	•	Actions 
	•	Projects 1 
	•	Wiki 
	•	Security 
	•	Insights 
	•	Settings 
More 
	•	
Open in github.dev Open in a new github.dev tab
Permalink
master 
Switch branches/tags 

Branches Tags 

View all branches
checkov/tests/terraform/graph/resources/modules-and-vars/examples/complete/outputs.tf 
Go to file

	•	Go to file T 
	•	Go to line L 
	•	
	•	Copy path 
	•	Copy permalink 

 
 
Cannot retrieve contributors at this time 
34 lines (28 sloc) 788 Bytes 
Raw Blame 




	•	Open with Desktop 
	•	View raw 
	•	Copy raw contents 
	•	View blame 
	•	
	•	Edit file 
	•	Delete file 

output "bucket_domain_name" {

value = module.s3_bucket.bucket_domain_name

description = "FQDN of bucket"

}



output "bucket_id" {

value = module.s3_bucket.bucket_id

description = "Bucket Name (aka ID)"

}



output "bucket_arn" {

value = module.s3_bucket.bucket_arn

description = "Bucket ARN"

}



output "bucket_region" {

value = module.s3_bucket.bucket_region

description = "Bucket region"

}



output "user_name" {

value = module.s3_bucket.user_name

description = "Normalized IAM user name"

}



output "user_arn" {

value = module.s3_bucket.user_arn

description = "The ARN assigned by AWS for the user"

}



output "user_unique_id" {

value = module.s3_bucket.user_unique_id

description = "The user unique ID assigned by AWS"

}

	•	Copy lines 
	•	Copy permalink 
	•	View git blame
	•	Reference in new issue

Go 
	•	© 2022 GitHub, Inc. 
	•	Terms
	•	Privacy
	•	Security
	•	Status
	•	Docs
	•	Contact GitHub
	•	Pricing
	•	API
	•	Training
	•	Blog
	•	About

