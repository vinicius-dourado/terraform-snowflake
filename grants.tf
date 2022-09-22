resource snowflake_database_grant grant {
  database_name = "integration_db"

  privilege = "USAGE"
  roles = [
    "data_scientist_role",
  ]

}
