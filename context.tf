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
checkov/tests/terraform/graph/resources/modules-and-vars/examples/complete/context.tf 
Go to file

	•	Go to file T 
	•	Go to line L 
	•	
	•	Copy path 
	•	Copy permalink 

 
 
Cannot retrieve contributors at this time 
167 lines (149 sloc) 4.99 KB 
Raw Blame 




	•	Open with Desktop 
	•	View raw 
	•	Copy raw contents 
	•	View blame 
	•	
	•	Edit file 
	•	Delete file 

#

# ONLY EDIT THIS FILE IN github.com/cloudposse/terraform-null-label

# All other instances of this file should be a copy of that one

#

#

# Copy this file from https://github.com/cloudposse/terraform-null-label/blob/master/exports/context.tf

# and then place it in your Terraform module to automatically get

# Cloud Posse's standard configuration inputs suitable for passing

# to Cloud Posse modules.

#

# Modules should access the whole context as `module.this.context`

# to get the input variables with nulls for defaults,

# for example `context = module.this.context`,

# and access individual variables as `module.this.<var>`,

# with final values filled in.

#

# For example, when using defaults, `module.this.context.delimiter`

# will be null, and `module.this.delimiter` will be `-` (hyphen).

#



module "this" {

source = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.19.2"



enabled = var.enabled

namespace = var.namespace

environment = var.environment

stage = var.stage

name = var.name

delimiter = var.delimiter

attributes = var.attributes

tags = var.tags

additional_tag_map = var.additional_tag_map

label_order = var.label_order

regex_replace_chars = var.regex_replace_chars

id_length_limit = var.id_length_limit



context = var.context

}



# Copy contents of cloudposse/terraform-null-label/variables.tf here



variable "context" {

type = object({

enabled = bool

namespace = string

environment = string

stage = string

name = string

delimiter = string

attributes = list(string)

tags = map(string)

additional_tag_map = map(string)

regex_replace_chars = string

label_order = list(string)

id_length_limit = number

})

default = {

enabled = true

namespace = null

environment = null

stage = null

name = null

delimiter = null

attributes = []

tags = {}

additional_tag_map = {}

regex_replace_chars = null

label_order = []

id_length_limit = null

}

description = <<-EOT

Single object for setting entire context at once.

See description of individual variables for details.

Leave string and numeric variables as `null` to use default value.

Individual variable settings (non-null) override settings in context object,

except for attributes, tags, and additional_tag_map, which are merged.

EOT

}



variable "enabled" {

type = bool

default = null

description = "Set to false to prevent the module from creating any resources"

}



variable "namespace" {

type = string

default = null

description = "Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'"

}



variable "environment" {

type = string

default = null

description = "Environment, e.g. 'uw2', 'us-west-2', OR 'prod', 'staging', 'dev', 'UAT'"

}



variable "stage" {

type = string

default = null

description = "Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release'"

}



variable "name" {

type = string

default = null

description = "Solution name, e.g. 'app' or 'jenkins'"

}



variable "delimiter" {

type = string

default = null

description = <<-EOT

Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes`.

Defaults to `-` (hyphen). Set to `""` to use no delimiter at all.

EOT

}



variable "attributes" {

type = list(string)

default = []

description = "Additional attributes (e.g. `1`)"

}



variable "tags" {

type = map(string)

default = {}

description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"

}



variable "additional_tag_map" {

type = map(string)

default = {}

description = "Additional tags for appending to tags_as_list_of_maps. Not added to `tags`."

}



variable "label_order" {

type = list(string)

default = null

description = <<-EOT

The naming order of the id output and Name tag.

Defaults to ["namespace", "environment", "stage", "name", "attributes"].

You can omit any of the 5 elements, but at least one must be present.

EOT

}



variable "regex_replace_chars" {

type = string

default = null

description = <<-EOT

Regex to replace chars with empty string in `namespace`, `environment`, `stage` and `name`.

If not set, `"/[^a-zA-Z0-9-]/"` is used to remove all characters other than hyphens, letters and digits.

EOT

}



variable "id_length_limit" {

type = number

default = null

description = <<-EOT

Limit `id` to this many characters.

Set to `0` for unlimited length.

Set to `null` for default, which is `0`.

Does not affect `id_full`.

EOT

}



#### End of copy of cloudposse/terraform-null-label/variables.tf

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

