terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "0.47.0"
    }
  }
}

resource "snowflake_role_grants" "ASSIGNMENTS" {
  role_name = var.role_name
  roles = var.roles
}
