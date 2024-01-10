# Retrieve information about the current user.
data "databricks_current_user" "me" {}
data "databricks_spark_version" "latest" {}

output "current_user_info" {
  value = {
    user_name = data.databricks_current_user.me.user_name
    user_home = data.databricks_current_user.me.home
    user_repo = data.databricks_current_user.me.home
    workspace_url = data.databricks_current_user.me.workspace_url
    alphanumeric = data.databricks_current_user.me.alphanumeric
  }
}

output "databricks_spark_version" {
  value = {
    version = data.databricks_spark_version.latest.spark_version
  }
}