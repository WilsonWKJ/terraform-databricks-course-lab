resource "databricks_catalog" "new_catalog_sandbox" {
  name         = "sandbox"
  comment      = "this catalog is managed by terraform"
  properties = {
    purpose = "testing"
  }
}