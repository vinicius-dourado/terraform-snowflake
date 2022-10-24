variable "database_name" {
  type = string
  description = "database name"
  default = null
}

variable "privilege" {
  type = list(string)
  description = "privilege"  
}

variable "roles" {
  type = list(string)
  description = "list of roles"
}

variable "on_future" {
  type = bool
  description = "on_future"
  default = true
}

variable "with_grant_option" {
  type = bool
  description = "with_grant_option"
  default = false
}
