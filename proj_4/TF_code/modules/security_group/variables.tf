variable "sg_name" {
  type = string
}

variable "description" {
  type = string
}

variable "allowed_ports" {
  type = list(number)
}