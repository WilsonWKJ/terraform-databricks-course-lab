resource "databricks_schema" "new_schema_items" {
  catalog_name = databricks_catalog.new_catalog_sandbox.id
  name         = "items"
  comment      = "this database is managed by terraform"
  properties = {
    kind = "various"
  }
}