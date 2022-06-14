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
checkov/tests/terraform/graph/resources/modules-and-vars/examples/complete/variables.tf 
Go to file

	•	Go to file T 
	•	Go to line L 
	•	
	•	Copy path 
	•	Copy permalink 

 
 
Cannot retrieve contributors at this time 
174 lines (146 sloc) 5.55 KB 
Raw Blame 




	•	Open with Desktop 
	•	View raw 
	•	Copy raw contents 
	•	View blame 
	•	
	•	Edit file 
	•	Delete file 

variable "acl" {

type = string

default = "private"

description = "The [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. We recommend `private` to avoid exposing sensitive information. Conflicts with `grants`."

}



variable "grants" {

type = list(object({

id = string

type = string

permissions = list(string)

uri = string

}))

default = null



description = "A list of ACL policy grants. Conflicts with `acl`. Set `acl` to `null` to use this."

}



variable "policy" {

type = string

default = ""

description = "A valid bucket policy JSON document. Note that if the policy document is not specific enough (but still valid), Terraform may view the policy as constantly changing in a terraform plan. In this case, please make sure you use the verbose/specific version of the policy"

}



variable "region" {

type = string

default = ""

description = "If specified, the AWS region this bucket should reside in. Otherwise, the region used by the callee"

}



variable "force_destroy" {

type = bool

default = false

description = "A boolean string that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable"

}



variable "versioning_enabled" {

type = bool

default = false

description = "A state of versioning. Versioning is a means of keeping multiple variants of an object in the same bucket"

}



variable "sse_algorithm" {

type = string

default = "AES256"

description = "The server-side encryption algorithm to use. Valid values are `AES256` and `aws:kms`"

}



variable "kms_master_key_arn" {

type = string

default = ""

description = "The AWS KMS master key ARN used for the `SSE-KMS` encryption. This can only be used when you set the value of `sse_algorithm` as `aws:kms`. The default aws/s3 AWS KMS master key is used if this element is absent while the `sse_algorithm` is `aws:kms`"

}



variable "user_enabled" {

type = bool

default = false

description = "Set to `true` to create an IAM user with permission to access the bucket"

}



variable "allowed_bucket_actions" {

type = list(string)

default = ["s3:PutObject", "s3:PutObjectAcl", "s3:GetObject", "s3:DeleteObject", "s3:ListBucket", "s3:ListBucketMultipartUploads", "s3:GetBucketLocation", "s3:AbortMultipartUpload"]

description = "List of actions the user is permitted to perform on the S3 bucket"

}



variable "allow_encrypted_uploads_only" {

type = bool

default = false

description = "Set to `true` to prevent uploads of unencrypted objects to S3 bucket"

}



variable "lifecycle_rule_enabled" {

type = bool

default = false

description = "Enable or disable lifecycle rule"

}



variable "prefix" {

type = string

default = ""

description = "Prefix identifying one or more objects to which the rule applies"

}



variable "noncurrent_version_transition_days" {

type = number

default = 30

description = "Number of days to persist in the standard storage tier before moving to the glacier tier infrequent access tier"

}



variable "noncurrent_version_expiration_days" {

type = number

default = 90

description = "Specifies when noncurrent object versions expire"

}



variable "cors_rule_inputs" {

type = list(object({

allowed_headers = list(string)

allowed_methods = list(string)

allowed_origins = list(string)

expose_headers = list(string)

max_age_seconds = number

}))

default = null



description = "Specifies the allowed headers, methods, origins and exposed headers when using CORS on this bucket"

}



variable "standard_transition_days" {

type = number

default = 30

description = "Number of days to persist in the standard storage tier before moving to the infrequent access tier"

}



variable "glacier_transition_days" {

type = number

default = 60

description = "Number of days after which to move the data to the glacier storage tier"

}



variable "enable_glacier_transition" {

type = bool

default = true

description = "Enables the transition to AWS Glacier which can cause unnecessary costs for huge amount of small files"

}



variable "enable_standard_ia_transition" {

type = bool

default = false

description = "Enables the transition to STANDARD_IA"

}



variable "expiration_days" {

type = number

default = 90

description = "Number of days after which to expunge the objects"

}



variable "abort_incomplete_multipart_upload_days" {

type = number

default = 5

description = "Maximum time (in days) that you want to allow multipart uploads to remain in progress"

}



variable "lifecycle_tags" {

type = map(string)

description = "Tags filter. Used to manage object lifecycle events"

default = {}

}



variable "block_public_acls" {

type = bool

default = true

description = "Set to `false` to disable the blocking of new public access lists on the bucket"

}



variable "block_public_policy" {

type = bool

default = true

description = "Set to `false` to disable the blocking of new public policies on the bucket"

}



variable "ignore_public_acls" {

type = bool

default = true

description = "Set to `false` to disable the ignoring of public access lists on the bucket"

}



variable "restrict_public_buckets" {

type = bool

default = true

description = "Set to `false` to disable the restricting of making the bucket public"

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

