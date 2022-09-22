resource "snowflake_role" "raw_full_role" {
  name    = "raw_full"
  comment = "for testing"
}

resource "snowflake_role" "integration_full_role" {
  name    = "integration_full"
  comment = "for testing"
}

resource "snowflake_role" "integration_r_role" {
  name    = "integration_r"
  comment = "for testing"
}

resource "snowflake_role" "datamart_rw_role" {
  name    = "datamart_rw"
  comment = "for testing"
}
