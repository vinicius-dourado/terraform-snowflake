terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "0.47.0"
    }
  }
}

resource "snowflake_role" "ROLES" {
    name = var.name
    comment = var.comment   
}
