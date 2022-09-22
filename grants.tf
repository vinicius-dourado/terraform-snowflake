resource "snowflake_database_grant" "integration_r_grant" {
  database_name = "integration_db"

  privilege = "SELECT"
  roles     = ["integration_r"]

  with_grant_option = false
}
