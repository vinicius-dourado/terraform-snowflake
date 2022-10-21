resource "snowflake_role" "fivetran_role" {
  name    = "fivetran_role"
  comment = "to be used by Fivetran to load data into RAW Database"
}

resource "snowflake_role" "data_engineer_role" {
  name    = "data_engineer_role"
  comment = "to be used by Data Engineers"
}

resource "snowflake_role" "data_scientist_role" {
  name    = "data_scientist_role"
  comment = "to be used by Data Scientists - regardeless they are accessing by Hex or Snoiwflake UI"
}

resource "snowflake_role" "analytics_engineer_role" {
  name    = "data_scieanalytics_engineer_rolentist_role"
  comment = "to be used by Analytics Engineers - regardeless they are accessing by Hex or Snoiwflake UI"
}

resource "snowflake_role" "sales_ops_role" {
  name    = "sales_ops_role"
  comment = "to be used by Sales Ops uers only in Analytics Database"
}

resource "snowflake_role" "business_analyst_role" {
  name    = "business_analyst_role"
  comment = "to be used by Business Analysts uers only in Analytics Database"
}

resource "snowflake_role" "dbt_role" {
  name    = "dbt_role"
  comment = "to be used by DBT Cloud (not DBT cli) to read in RAW and write into Analytics Database"
}

resource "snowflake_role" "reporter_role" {
  name    = "reporter_role"
  comment = "to be used by users who use HEX UI to query data. Not valid to Data Scientists who should access using to Data data_scientist_role"
}

resource "snowflake_role" "modelbit_role" {
  name    = "modelbit_role"
  comment = "to be used by modelbit role which is used to read only Analytics Database. It only needs to have usage permissions on functions"
}

resource "snowflake_role" "modelbit_role" {
  name    = "modelbit_role"
  comment = "to be used by modelbit role which is used to read only Analytics Database. It only needs to have usage permissions on functions"
}

resource "snowflake_role" "rudder_role" {
  name    = "rudder_role"
  comment = "to be used by rudder_stack in reverse ETL. They need to have read permissions in Analytics database (for processed and staging tables)
Read permissions in RAW tables."
}

resource "snowflake_role" "rudder_events_role" {
  name    = "rudder_role"
  comment = ""
}

resource "snowflake_role" "shopify_webhooks_role" {
  name    = "SHOPIFY_WEBHOOKS_ROLE"
  comment = ""
}
