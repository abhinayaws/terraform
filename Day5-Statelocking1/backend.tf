terraform {
  backend "s3" {
    bucket = "abhinay.12345"
    key = "Dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt = true
    
  }
}