resource "snowflake_schema" "demo_schema" {
  database = snowflake_database.demo_db.name
  name     = "DEMO_SCHEMA"
  comment  = "Schema for Snowflake Terraform demo"
}

resource "snowflake_schema" "demo_schema_dev" {
  database = snowflake_database.demo_db.name
  name     = "DEMO_SCHEMA_DEV"
  comment  = "Schema for Snowflake Terraform demo"
}
