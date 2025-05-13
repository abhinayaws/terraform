terraform {
  backend "s3" {
    bucket = "abhinay.12345"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "state-lock"
    encrypt = true
    
  }
}
