
create_resource_group = false
resource_group_name   = "rg99"
location              = "East US"

length                   = 6
special                  = false
upper                    = false
name                     = "str231m-test01"
account_tier             = "Standard"
account_replication_type = "LRS"
min_tls_version          = "TLS1_2"
tags = {
  project_id = "cil2.0"
  owner      = "gowtham.vidavaluru@gds.ey.com"
}

account_kind                     = "BlobStorage"
cross_tenant_replication_enabled = "true"
access_tier                      = "Hot"
edge_zone                        = null
enable_https_traffic_only        = false
allow_nested_items_to_be_public  = true
shared_access_key_enabled        = true
is_hns_enabled                   = true
nfsv3_enabled                    = false
large_file_share_enabled         = false
custom_domain = [
  {
    custom_domain_name = null
    use_subdomain      = null
  }
]
customer_managed_key = [
  {
    key_vault_key_id          = "https://testkeycil9.vault.azure.net/keys/keyvault1/55fecb20bbfd4852b4a2b0b62fc68750"
    user_assigned_identity_id = "/subscriptions/812aa5e4-bb0f-4352-9170-4d09ab8a5952/resourceGroups/rg99/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mitest"
  }
]
managed_identity_type = "UserAssigned"
identity = [
  {
    managed_identity_type = "UserAssigned"

    managed_identity_id = ["/subscriptions/812aa5e4-bb0f-4352-9170-4d09ab8a5952/resourceGroups/rg99/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mitest"]
  }
]
enable_static_website = false
static_website = [
  {
    static_website_index_document = null
    static_website_error_doc      = null
  }
]
enable_share_properties = false
cors_rule = [
  {
    shared_properties_allowed_headers = ["*"]
    shared_properties_allowed_methods = ["GET", "DELETE"]
    shared_properties_allowed_origins = ["*"]
    shared_properties_exposed_headers = ["*"]
    shared_properties_max_age_in_sec  = 7
  }
]
retention_policy = [
  {
    retention_policy_days = 7
  }
]

smb = [
  {
    smb_versions                        = "2.1"
    smb_authentication_types            = "kerberos"
    smb_kerberos_ticket_encryption_type = "AES-256"
    channel_encryption_type             = "AES-256-GCM"
    multichannel_enabled                = false
  }
]

azure_files_authentication = [
  {
    directory_type = "AADDS"
  }
]

active_directory = [
  {
    storage_sid         = null
    domain_name         = null
    domain_sid          = null
    domain_guid         = null
    forest_name         = null
    netbios_domain_name = null
  }
]

enable_routing = true

routing = [
  {
    publish_internet_endpoints  = false
    publish_microsoft_endpoints = true
    routing_choice              = "MicrosoftRouting"
  }
]

enable_blob_properties = false

blob_properties = [
  {
    enable_versioning             = false
    last_access_time_enabled      = false
    change_feed_enabled           = true
    change_feed_retention_in_days = 7
    default_service_version       = "2020-06-12"
  }
]

cors_rule_blob = [
  {
    blob_properties_allowed_headers = ["*"]
    blob_properties_allowed_methods = ["GET", "DELETE"]
    blob_properties_allowed_origins = ["*"]
    blob_properties_exposed_headers = ["*"]
    blob_properties_max_age_in_sec  = 7
  }
]

delete_retention_policy = [
  {
    blob_soft_delete_retention_days = 2
  }
]

container_delete_retention_policy = [
  {
    container_soft_delete_retention_days = 2
  }
]

cors_rule_queue = [
  {
    queue_properties_allowed_headers = ["*"]
    queue_properties_allowed_methods = ["GET", "DELETE"]
    queue_properties_allowed_origins = ["*"]
    queue_properties_exposed_headers = ["*"]
    queue_properties_max_age_in_sec  = 7
  }
]

logging = [
  {
    logging_delete                = true
    logging_read                  = true
    logging_version               = "1"
    logging_write                 = true
    logging_retention_policy_days = 10
  }
]

minute_metrics = [
  {
    minute_metrics_enabled               = true
    minute_metrics_version               = "1.0"
    minute_metrics_include_apis          = true
    minute_metrics_retention_policy_days = 10
  }
]

hour_metrics = [
  {
    hour_metrics_enabled               = true
    hour_metrics_version               = "1.0"
    hour_metrics_include_apis          = true
    hour_metrics_retention_policy_days = 10
  }
]

network_rule_default_action = "Allow"
ip_rules                    = ["127.0.0.0"]
subnet_ids                  = ["/subscriptions/812aa5e4-bb0f-4352-9170-4d09ab8a5952/resourceGroups/rg99/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1"]
bypass                      = ["Metrics"]

private_link_access = [
  {
    endpoint_resource_id = null
    endpoint_tenant_id   = null
  }
]

encryption_scopes = {
  "encrypt" = {
    enable_infrastructure_encryption = true

    source_encryption = "Microsoft.Storage"

  }
}

enable_advanced_threat_protection = "true"

# #############################################################

create_private-endpoint         = true
private_endpoint_name           = "endpoint-storage"
private_service_connection_name = "privateserviceconnection-storr345789"
subresource_names               = ["Blob"]
subnet_id                       = "/subscriptions/812aa5e4-bb0f-4352-9170-4d09ab8a5952/resourceGroups/rg99/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1"
is_manual_connection            = false
request_message                 = "PL"

