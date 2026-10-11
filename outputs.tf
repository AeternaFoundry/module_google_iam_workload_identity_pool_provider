output "iam_workload_identity_pool_providers_id" {
  description = "Map of id values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no id are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_workload_identity_pool_providers_attribute_condition" {
  description = "Map of attribute_condition values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no attribute_condition are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => v.attribute_condition if v.attribute_condition != null && length(v.attribute_condition) > 0 }
}
output "iam_workload_identity_pool_providers_attribute_mapping" {
  description = "Map of attribute_mapping values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no attribute_mapping are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => v.attribute_mapping if v.attribute_mapping != null && length(v.attribute_mapping) > 0 }
}
output "iam_workload_identity_pool_providers_aws" {
  description = "Map of aws values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no aws are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => one(v.aws) if v.aws != null && length(v.aws) > 0 }
}
output "iam_workload_identity_pool_providers_deletion_policy" {
  description = "Map of deletion_policy values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no deletion_policy are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "iam_workload_identity_pool_providers_description" {
  description = "Map of description values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no description are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => v.description if v.description != null && length(v.description) > 0 }
}
output "iam_workload_identity_pool_providers_disabled" {
  description = "Map of disabled values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no disabled are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => v.disabled if v.disabled != null }
}
output "iam_workload_identity_pool_providers_display_name" {
  description = "Map of display_name values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no display_name are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "iam_workload_identity_pool_providers_name" {
  description = "Map of name values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no name are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iam_workload_identity_pool_providers_oidc" {
  description = "Map of oidc values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no oidc are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => one(v.oidc) if v.oidc != null && length(v.oidc) > 0 }
}
output "iam_workload_identity_pool_providers_project" {
  description = "Map of project values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no project are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => v.project if v.project != null && length(v.project) > 0 }
}
output "iam_workload_identity_pool_providers_saml" {
  description = "Map of saml values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no saml are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => one(v.saml) if v.saml != null && length(v.saml) > 0 }
}
output "iam_workload_identity_pool_providers_state" {
  description = "Map of state values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no state are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => v.state if v.state != null && length(v.state) > 0 }
}
output "iam_workload_identity_pool_providers_workload_identity_pool_id" {
  description = "Map of workload_identity_pool_id values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no workload_identity_pool_id are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => v.workload_identity_pool_id if v.workload_identity_pool_id != null && length(v.workload_identity_pool_id) > 0 }
}
output "iam_workload_identity_pool_providers_workload_identity_pool_provider_id" {
  description = "Map of workload_identity_pool_provider_id values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no workload_identity_pool_provider_id are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => v.workload_identity_pool_provider_id if v.workload_identity_pool_provider_id != null && length(v.workload_identity_pool_provider_id) > 0 }
}
output "iam_workload_identity_pool_providers_x509" {
  description = "Map of x509 values across all iam_workload_identity_pool_providers, keyed the same as var.iam_workload_identity_pool_providers except keys with no x509 are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_provider.iam_workload_identity_pool_providers : k => one(v.x509) if v.x509 != null && length(v.x509) > 0 }
}

