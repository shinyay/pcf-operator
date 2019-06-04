#!/bin/bash

TARGET_FILENAME=light-bosh-stemcell-170.76-google-kvm-ubuntu-xenial-go_agent.tgz

om --username admin --password ${PCF_OPSMAN_ADMIN_PASSWD} --target https://${PCF_OPSMAN_FQDN} --skip-ssl-validation upload-stemcell --stemcell ${TARGET_FILENAME}
om --username admin --password ${PCF_OPSMAN_ADMIN_PASSWD} --target https://${PCF_OPSMAN_FQDN} --skip-ssl-validation assign-stemcell --product p-healthwatch --stemcell 170.76
