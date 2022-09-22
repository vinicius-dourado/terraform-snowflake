resource "snowflake_user" "user_dbt" {
  name    = "dbt"
  comment = "for testing"
}
