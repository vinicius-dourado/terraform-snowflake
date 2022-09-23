resource "snowflake_role" "raw_full" {
  name    = "raw_full"
  comment = "for testing"
}

resource "snowflake_role" "integration" {
  name    = "integration_full"
  comment = "for testing"
}

resource "snowflake_role" "integration_r" {
  name    = "integration_r"
  comment = "for testing"
}

resource "snowflake_role" "datamart_rw" {
  name    = "datamart_rw"
  comment = "for testing"
}
