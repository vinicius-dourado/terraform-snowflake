resource "snowflake_database_grant" "integration_r_grant" {
  database_name = "integration_db"

  privilege = "SELECT"
  roles     = ["integration_r"]

  with_grant_option = false
}

resource "snowflake_database_grant" "datamart_rw_grant" {
  database_name = "integration_db"

  privilege = ["SELECT","INSERT","DELETE","UPDATE"]
  roles     = ["integration_r"]

  with_grant_option = false
}
