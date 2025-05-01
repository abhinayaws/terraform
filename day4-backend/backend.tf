terraform {
  backend "s3" {
    bucket = "abhinay.d.123"
    key = "terraform.tf.state"
    region = "us-east-1"
  }
}