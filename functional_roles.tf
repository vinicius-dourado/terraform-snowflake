resource "snowflake_role" "etl_role" {
  name    = "etl_role"
  comment = "for testing"
}

resource "snowflake_role" "data_engineer_role" {
  name    = "data_engineer_role"
  comment = "for testing"
}

resource "snowflake_role" "data_scientist_role" {
  name    = "data_scientist_role"
  comment = "for testing"
}

resource "snowflake_role" "dbt_role" {
  name    = "dbt_role"
  comment = "for testing"
}
