resource "snowflake_user" "user_dbt" {
  name    = "dbt_user"
  comment = "for testing"
}

resource "snowflake_user" "user_fivetran" {
  name    = "fivetran_user"
  comment = "for testing"
}
