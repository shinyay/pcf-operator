#!/bin/bash

cat << EOS
Navigate to the Pivotal Application Service tile, Credentials tab.
Find the UAA → Admin Credentials.
Click on Link to Credential.
EOS

cf login -a api.sys.${PCF_SUBDOMAIN_NAME}.${PCF_DOMAIN_NAME} --skip-ssl-validation
