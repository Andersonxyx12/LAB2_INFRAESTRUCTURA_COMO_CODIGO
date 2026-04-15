variable "environment" {
  type    = string
  default = "dev"
}

variable "web_port" {
  type = map(number)
  default = {
    dev  = 4001
    prod = 5001
  }
}

variable "api_port" {
  type = map(number)
  default = {
    dev  = 4002
    prod = 5002
  }
}
