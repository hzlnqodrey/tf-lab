
variable "project_id" {
  description = "GCP Project ID"
  default = "qwiklabs-gcp-04-a1f6b7f09d0c"
}

variable "region" {
  description = "GCP used region"
  default = "us-east4"
}

variable "zone" {
  description = "GCP used zone"
  default = "us-east4-b"
}

variable "name" {
  description = "GCP Bucket name"
  default = "tf-bucket-183666"
}

variable "vpc_name" {
  description = "GCP VPC name"
  default = "tf-vpc-826411"
}