variable "ami_id" {
  description = "passing the values"
  default = ""
  type = string
}
variable "instance_type" {
  description = "passing the instance type"
  default = ""
  type = string
}
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default = ""
  type = string
}  
variable "subnet_cidr" {
  description = "CIDR block for the Subnet"
  default = ""
  type = string
} 
variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  default = ""
  type = string
}