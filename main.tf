resource "google_iam_workload_identity_pool_provider" "iam_workload_identity_pool_providers" {
  for_each = var.iam_workload_identity_pool_providers

  workload_identity_pool_id          = each.value.workload_identity_pool_id
  workload_identity_pool_provider_id = each.value.workload_identity_pool_provider_id
  attribute_condition                = each.value.attribute_condition
  attribute_mapping                  = each.value.attribute_mapping
  deletion_policy                    = each.value.deletion_policy
  description                        = each.value.description
  disabled                           = each.value.disabled
  display_name                       = each.value.display_name
  project                            = each.value.project

  dynamic "aws" {
    for_each = each.value.aws != null ? [each.value.aws] : []
    content {
      account_id = aws.value.account_id
    }
  }

  dynamic "oidc" {
    for_each = each.value.oidc != null ? [each.value.oidc] : []
    content {
      allowed_audiences = oidc.value.allowed_audiences
      issuer_uri        = oidc.value.issuer_uri
      jwks_json         = oidc.value.jwks_json
    }
  }

  dynamic "saml" {
    for_each = each.value.saml != null ? [each.value.saml] : []
    content {
      idp_metadata_xml = saml.value.idp_metadata_xml
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "x509" {
    for_each = each.value.x509 != null ? [each.value.x509] : []
    content {
      trust_store {
        dynamic "intermediate_cas" {
          for_each = x509.value.trust_store.intermediate_cas != null ? x509.value.trust_store.intermediate_cas : []
          content {
            pem_certificate = intermediate_cas.value.pem_certificate
          }
        }
        dynamic "trust_anchors" {
          for_each = x509.value.trust_store.trust_anchors
          content {
            pem_certificate = trust_anchors.value.pem_certificate
          }
        }
      }
    }
  }
}

