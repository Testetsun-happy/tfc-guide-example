variable "application" {
  type    = string
}

variable "env" {
  type    = string
}

variable "name_suffix" {
  type    = string
}

variable "server" {
  type    = string
}
variable "port" {
  type    = number
}
variable "database" {
  type    = string
}
variable "username" {
  type    = string
}
variable "password" {
  type    = string
}
#none | require | verify-ca | verify-full
variable "enable_ssl" {
  type    = string
  default = "none"
}