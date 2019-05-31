#!/bin/bash

gcloud compute networks subnets list

echo ""
echo "[Network Names]"
echo "infrastructure"
echo "[Google Network Name"]
NETWORK_NAME=$(cat terraform.out | jq -r .network_name.value)
INFRA_SUBNET=$(cat terraform.out | jq -r .infrastructure_subnet_name.value)
REGION=$(cat terraform.out | jq -r .region.value)
echo ${NETWORK_NAME}/${INFRA_SUBNET}/${REGION}
echo "[CIDR]"
cat terraform.out | jq -r .infrastructure_subnet_cidrs.value
echo "[DNS]"
echo "169.254.169.254"
echo "[Gateway]"
cat terraform.out | jq -r .infrastructure_subnet_gateway.value

echo ""
echo "[Network Names]"
echo "pas"
echo "[Google Network Name"]
PAS_SUBNET=$(cat terraform.out | jq -r .pas_subnet_name.value)
echo ${NETWORK_NAME}/${PAS_SUBNET}/${REGION}
echo "[CIDR]"
cat terraform.out | jq -r .pas_subnet_cidrs.value
echo "[DNS]"
echo "169.254.169.254"
echo "[Gateway]"
cat terraform.out | jq -r .pas_subnet_gateway.value

echo ""
echo "[Network Names]"
echo "services"
echo "[Google Network Name"]
SERVICE_SUBNET=$(cat terraform.out | jq -r .services_subnet_name.value)
echo ${NETWORK_NAME}/${SERVICE_SUBNET}/${REGION}

echo "[CIDR]"
cat terraform.out | jq -r .services_subnet_cidrs.value
echo "[DNS]"
echo "169.254.169.254"
echo "[Gateway]"
cat terraform.out | jq -r .services_subnet_gateway.value
