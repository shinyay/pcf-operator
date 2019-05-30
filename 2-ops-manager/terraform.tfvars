env_name            = "PCF_SUBDOMAIN_NAME"
project             = "PCF_PROJECT_ID"
region              = "asia-northeast1"
zones               = ["asia-northeast1-b", "asia-northeast1-a", "asia-northeast1-c"]
dns_suffix          = "PCF_DOMAIN_NAME"
opsman_image_url    = "https://storage.googleapis.com/ops-manager-us/pcf-gcp-2.5.4-build.189.tar.gz"
create_gcs_buckets  = false
external_database   = false
isolation_segment   = false
ssl_cert = <<SSL_CERT
-----BEGIN CERTIFICATE-----
YOUR_SSL_CERT
-----END CERTIFICATE-----
SSL_CERT

ssl_private_key = <<SSL_KEY
-----BEGIN RSA PRIVATE KEY-----
YOUR_PRIVATE_KEY
-----END RSA PRIVATE KEY-----
SSL_KEY

service_account_key = <<SERVICE_ACCOUNT_KEY
YOUR_SERVICE_ACCOUNT_KEY
SERVICE_ACCOUNT_KEY
