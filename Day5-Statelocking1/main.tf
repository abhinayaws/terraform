resource "aws_dynamodb_table" "dev" {
  name = "terraform-lock-table"
  hash_key = "LockID"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = "Terraform Lock"
  }
}