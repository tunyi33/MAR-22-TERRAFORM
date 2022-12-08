# Configure the AWS Provider

# provider "aws" {
#   access_key ="value"
#   region     = "us-east-1"
#   secret_key =""
# }

provider "aws" {
access_key=var.access_key
secret_key= var.secret_key
region    =var.region

 }