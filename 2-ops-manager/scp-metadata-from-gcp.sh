#!/bin/bash

gcloud compute scp ubuntu@jumpbox:~/pcf-operator/2-ops-manager/gcp_credentials.json . --zone asia-northeast1-b --force-key-file-overwrite --strict-host-key-checking=no
gcloud compute scp ubuntu@jumpbox:~/pcf-operator/2-ops-manager/mypcf.syanagihara.cf.cert . --zone asia-northeast1-b --force-key-file-overwrite --strict-host-key-checking=no
gcloud compute scp ubuntu@jumpbox:~/pcf-operator/2-ops-manager/mypcf.syanagihara.cf.cnf . --zone asia-northeast1-b --force-key-file-overwrite --strict-host-key-checking=no
gcloud compute scp ubuntu@jumpbox:~/pcf-operator/2-ops-manager/mypcf.syanagihara.cf.key . --zone asia-northeast1-b --force-key-file-overwrite --strict-host-key-checking=no
gcloud compute scp ubuntu@jumpbox:~/pcf-operator/2-ops-manager/terraform.tfvars . --zone asia-northeast1-b --force-key-file-overwrite --strict-host-key-checking=no
gcloud compute scp ubuntu@jumpbox:~/pcf-operator/2-ops-manager/terraform.out . --zone asia-northeast1-b --force-key-file-overwrite --strict-host-key-checking=no
