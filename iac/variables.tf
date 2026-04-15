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

variable "mysql_port" {
  type = map(number)
  default = {
    dev  = 3306
    prod = 3306
  }
}

variable "mysql_root_password" {
  type      = string
  sensitive = true
  default   = "root123"
}
