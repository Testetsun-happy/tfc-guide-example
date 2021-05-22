variable "application" {
  type    = string
}

variable "env" {
  type    = string
}

variable "name_suffix" {
  type    = string
}

variable "source_endpoint_arn" {
  type    = string
}

variable "target_endpoint_arn" {
  type    = number
}

variable "enable_validation" {
  type    = bool
}

variable "rule" {
  type    = string
}
