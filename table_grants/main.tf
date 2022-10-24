terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "0.47.0"
    }
  }
}

resource "snowflake_table_grant" "TABLE_GRANTS" {
  database_name = var.database_name
  schema_name   = var.schema_name

  for_each = toset( var.privilege )
  privilege = each.key  
  roles = var.roles

  on_future         = var.on_future
  with_grant_option = var.with_grant_option
}



