resource "snowflake_user" "dbt" {
  name    = "dbt"
  comment = "for testing"
  default_role = "dbt_role"
}

resource "snowflake_user" "etl" {
  name    = "etl"
  comment = "for testing"
  default_role = "etl_role"
}

resource "snowflake_user" "gabriel" {
  name    = "gabriel"
  comment = "for testing"
  default_role = "data_engineer_role"
}

resource "snowflake_user" "joao" {
  name    = "joao"
  comment = "for testing"
  default_role = "data_scientist_role"
}
