variable "role_name" {
  type = string
  description = "snowflake role name"
  default = null
}

variable "roles" {
  type = list(string)
  description = "snowflake role comment"
}
