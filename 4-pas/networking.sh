#!/bin/bash

echo "[Certificates and Private Keys for HAProxy and Router ]"
echo "Add"

echo "[Certificate PEM]"
cat ../2-ops-manager/mypcf.syanagihara.cf.cert
echo "[Private Key PEM]"
cat ../2-ops-manager/mypcf.syanagihara.cf.key

echo "[HAProxy forwards requests to Router over TLS]"
echo "Disable"

echo "[Disable SSL certificate verification for this environment]"
echo "Disable"
