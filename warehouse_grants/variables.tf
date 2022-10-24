variable "warehouse_name" {
  type = string
  description = "warehouse name"
  default = null
}

variable "privilege" {
  type = string
  description = "privilege"  
}

variable "roles" {
  type = list(string)
  description = "list of roles"
}

variable "with_grant_option" {
  type = bool
  description = "with_grant_option"
  default = false
}
