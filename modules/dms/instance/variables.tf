variable "application" {
  type    = string
}

variable "env" {
  type    = string
}

variable "name_suffix" {
  type    = string
}

variable "engine_version" {
  type    = string
}

variable "storage" {
  type    = number
}

variable "az" {
  type    = string
}
variable "maintenance_window" {
  type    = string
}
variable "publicly_accessible" {
  type    = bool
}

variable "instance_class" {
  type    = string
}

variable "subnet_group_id" {
  type    = string
}

variable "security_group_id" {
  type    = string
}