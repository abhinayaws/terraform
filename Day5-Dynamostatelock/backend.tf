terraform {
  backend "s3" {
    bucket         = "abhinay.d.12345"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
