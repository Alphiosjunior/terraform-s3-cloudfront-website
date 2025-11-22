# Remote backend for Terraform state
terraform {
  backend "s3" {
    bucket         = "terraform-state-alphios-${random_id.suffix.hex}"
    key            = "s3-cloudfront/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}