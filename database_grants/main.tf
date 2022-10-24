terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "0.47.0"
    }
  }
}

resource "snowflake_database_grant" "DB_GRANTS" {
  database_name = var.database_name
  for_each = toset( var.privilege )
  privilege = each.key  
  roles = var.roles

  with_grant_option = var.with_grant_option
}


