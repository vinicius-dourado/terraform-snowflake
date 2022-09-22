resource "snowflake_user" "user_dbt" {
  name    = "dbt"
  comment = "for testing"
}

resource "snowflake_user" "user_etl" {
  name    = "etl"
  comment = "for testing"
}

resource "snowflake_user" "user_gabriel" {
  name    = "gabriel"
  comment = "for testing"
  default_role = "data_engineer_role"
}

resource "snowflake_user" "user_joao" {
  name    = "joao"
  comment = "for testing"
}
