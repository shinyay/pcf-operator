#!/bin/bash

TARGET_FILENAME=p-healthwatch-1.5.2-build.4.pivotal

om --username admin --password ${PCF_OPSMAN_ADMIN_PASSWD} --target https://${PCF_OPSMAN_FQDN} --skip-ssl-validation upload-product --product ${TARGET_FILENAME}
om \
	--username admin \
	--password ${PCF_OPSMAN_ADMIN_PASSWD} \
	--target https://${PCF_OPSMAN_FQDN} \
	--skip-ssl-validation \
	stage-product \
	--product-name p-healthwatch \
	--product-version 1.5.2-build.4
