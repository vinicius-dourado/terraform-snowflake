resource "snowflake_database_grant" "integration_r_grant" {
  database_name = "integration_db"

  privilege = "USAGE"
  roles     = ["integration_r"]

}
