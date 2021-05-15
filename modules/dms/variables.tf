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
variable "password" {
  type    = string
}
variable "enable_ssl" {
  type    = bool
  default = false
}