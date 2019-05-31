#!/bin/bash

TARGET_FILENAME=srt-2.5.4-build.5.pivotal

om --username admin --password ${PCF_OPSMAN_ADMIN_PASSWD} --target https://${PCF_OPSMAN_FQDN} --skip-ssl-validation upload-product --product ${TARGET_FILENAME}
