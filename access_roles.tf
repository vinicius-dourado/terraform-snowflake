resource "snowflake_role" "raw_full" {
  name    = "raw_full"
  comment = "access role which give full permission on RAW database to those assineg to it"
}

resource "snowflake_role" "raw_r" {
  name    = "raw_read"
  comment = "access role which give read only permission on RAW database to those assigned to it"
}

resource "snowflake_role" "raw_rw" {
  name    = "raw_rw"
  comment = "access role which give read and write permission on RAW database to those assigned to it"
}

resource "snowflake_role" "analytics_full" {
  name    = "analytics_full"
  comment = "access role which give full permission on ANALYTICS database to those assineg to it"
}

resource "snowflake_role" "analytics_r" {
  name    = "analytics_r"
  comment = "access role which give read only permission on ANALYTICS database to those assigned to it"
}

resource "snowflake_role" "analytics_rw" {
  name    = "analytics_rw"
  comment = "access role which give read and write permission on ANALYTICS database to those assigned to it"
}

resource "snowflake_role" "shopify_webhooks_rw" {
  name    = "shopify_webhooks_rw"
  comment = "access role which give read and write permission on shopify_webhooks_rw schema in RAW database to those assigned to it"
}

resource "snowflake_role" "salesops_r" {
  name    = "salesops_r"
  comment = "access role which give read and write permission on sales_ops schemas in ANALYTICS database to those assigned to it"
}
