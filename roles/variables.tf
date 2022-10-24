variable "name" {
  type = string
  description = "snowflake role name"
  default = null
}

variable "comment" {
  type = string
  description = "snowflake role comment"
  default = "Provided by Terraform"
}
