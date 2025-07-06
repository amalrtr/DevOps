variable "cidr" {
  default = "10.0.0.0/16"
}

variable "cidr_subnet1" {
  default = "10.0.1.0/24"
}

variable "cidr_subnet2" {
  default = "10.0.2.0/24"
}

variable "availability_zone" {
  default = "ap-south-1"
}

locals {
  aps1 = var.availability_zone
}
