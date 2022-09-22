resource "snowflake_user" "dbt" {
  name    = "dbt"
  comment = "for testing"
}
