resource "snowflake_user" "user_dbt" {
  name    = "dbt"
  comment = "for testing"
  default_role = "etl_role"
}
