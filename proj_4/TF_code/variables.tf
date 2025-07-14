variable "instance_type" {
  default = "t2.micro"
  type    = string
}

variable "ami_id" {
  type = string

  validation {
    condition     = length(var.ami_id) > 4 && substr(var.ami_id, 0, 4) == "ami-"
    error_message = "Entered AMI ID is invalid, enter correct AMI ID"
  }
}

variable "instance_name" {
  type = string
}
