#!/bin/bash

TARGET_FILENAME=pivotal-mysql-2.5.4-build.51.pivotal

om --username admin --password ${PCF_OPSMAN_ADMIN_PASSWD} --target https://${PCF_OPSMAN_FQDN} --skip-ssl-validation upload-product --product ${TARGET_FILENAME}
om \
	--username admin \
	--password ${PCF_OPSMAN_ADMIN_PASSWD} \
	--target https://${PCF_OPSMAN_FQDN} \
	--skip-ssl-validation \
	stage-product \
	--product-name pivotal-mysql \
	--product-version 2.5.4-build.51
