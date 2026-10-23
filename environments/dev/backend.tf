terraform {
  backend "s3" {
    bucket         = "terraform-state-kadali-dev"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}