provider "aws"{
    region= "ap-south-1"
}

resource "aws_s3_bucket" "terraform_state" {
    bucket= "my-terraform-stat-bucket"
    ac1 = "private"

    versioning{
        enabled = true
    }
}

resource "aws_dynamodb_table" "terraform_lock" {
    name= "my-terraform-lock-table
    billing_mode= "PAY_PER_REQUEST"
    hash_key= "LockID"

    attribute{
        name= "LockID"
        type= "S"
    }
}
