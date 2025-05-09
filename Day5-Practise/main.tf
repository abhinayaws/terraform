resource "aws_s3_bucket" "name" {
    bucket = "abhinay.12345"
    
    tags = {
        Name = "S3 for statefile"
        Environment = "Dev"

    }
}
resource "aws_dynamodb_table" "dyanamodb-locking" {
  name = "state-lock"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    name = "Lock for statefile"
    Environment = "Dev"
  }
  
}
