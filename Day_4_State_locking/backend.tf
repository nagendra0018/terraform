terraform {
 backend "s3" {
   bucket = "nagendra-state-file-terraform-123"
   use_lockfile = true
   key    = "terraform.tfstate"
   region = "us-east-1"
 }
}