terraform {
  backend "s3" {
    bucket         = "terraformstatestore.vjmourya"
    key            = "s3-backend-with-workspace/statestorefile"
    region         = "ap-south-1"
    profile        = "for_aws_3"
    dynamodb_table = "terraformstatestore"
  }
}
