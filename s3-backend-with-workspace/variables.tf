locals {
  s3_bucket_region = terraform.workspace == "blue" ? "ap-south-1" : terraform.workspace == "green" ? "ap-south-2" : "eu-west-1"
}

# variable "aws_region" {
#   description = "AWS region"
#   type        = string
#   default     = local.region
# }


variable "contact_person" {
  description = "creater/owner for the scripts and resources"
  type        = string
  default     = "vijayrmourya@gmail.com"
}
