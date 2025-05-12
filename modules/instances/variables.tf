
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

variable "machine_type" {
  description = "VM machine type"
  default = "e2-standard-2"
}

variable "network_name" {
  type        = string
  description = "The name (self-link) of the VPC network to attach instances to"
}

variable "subnet_self_links" {
  type        = list(string)
  description = "List of self-links for the subnets; instances will pick one by index"
}