resource "snowflake_user" "dbt" {
  name    = "dbt"
  comment = "for testing"
  default_role = "etl_role"
}
