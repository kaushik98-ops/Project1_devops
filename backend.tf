terraform{
    bucket= "my-terraform-state-bucket"
    key= "proj1/terraform.tfstate"
    region= "us-east-1"
    dynamodb_table= "my-terraform-lock-table"
}
