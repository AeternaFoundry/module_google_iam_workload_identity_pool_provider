variable "iam_workload_identity_pool_providers" {
  description = <<EOT
Map of iam_workload_identity_pool_providers, attributes below
Required:
    - workload_identity_pool_id
    - workload_identity_pool_provider_id
Optional:
    - attribute_condition
    - attribute_mapping
    - deletion_policy
    - description
    - disabled
    - display_name
    - project
    - aws (block):
        - account_id (required)
    - oidc (block):
        - allowed_audiences (optional)
        - issuer_uri (required)
        - jwks_json (optional)
    - saml (block):
        - idp_metadata_xml (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - x509 (block):
        - trust_store (required, block):
            - intermediate_cas (optional, block):
                - pem_certificate (optional)
            - trust_anchors (required, block):
                - pem_certificate (optional)
EOT

  type = map(object({
    workload_identity_pool_id          = string
    workload_identity_pool_provider_id = string
    attribute_condition                = optional(string)
    attribute_mapping                  = optional(map(string))
    deletion_policy                    = optional(string)
    description                        = optional(string)
    disabled                           = optional(bool)
    display_name                       = optional(string)
    project                            = optional(string)
    aws = optional(object({
      account_id = string
    }))
    oidc = optional(object({
      allowed_audiences = optional(list(string))
      issuer_uri        = string
      jwks_json         = optional(string)
    }))
    saml = optional(object({
      idp_metadata_xml = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    x509 = optional(object({
      trust_store = object({
        intermediate_cas = optional(list(object({
          pem_certificate = optional(string)
        })))
        trust_anchors = list(object({
          pem_certificate = optional(string)
        }))
      })
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iam_workload_identity_pool_providers : (
        v.x509 == null || (length(v.x509.trust_store.trust_anchors) >= 1)
      )
    ])
    error_message = "Each trust_anchors list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.iam_workload_identity_pool_providers : (
        !startswith(v.workload_identity_pool_provider_id, "gcp-")
      )
    ])
    error_message = "[from ValidateWorkloadIdentityPoolProviderId: must not start with \"gcp-\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iam_workload_identity_pool_providers : (
        length(v.workload_identity_pool_provider_id) >= 4
      )
    ])
    error_message = "[from ValidateWorkloadIdentityPoolProviderId: invalid when len(value) < 4]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iam_workload_identity_pool_providers : (
        length(v.workload_identity_pool_provider_id) <= 32
      )
    ])
    error_message = "[from ValidateWorkloadIdentityPoolProviderId: invalid when len(value) > 32]"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

