#!/bin/bash

sudo apt update
sudo apt --yes install unzip
sudo apt --yes install jq
#wget -O terraform.zip https://releases.hashicorp.com/terraform/0.12.0/terraform_0.12.0_linux_amd64.zip && \
wget -O terraform.zip https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip && \
  unzip terraform.zip && \
  sudo mv terraform /usr/local/bin
wget -O om https://github.com/pivotal-cf/om/releases/download/1.1.0/om-linux && \
  chmod +x om && \
  sudo mv om /usr/local/bin/
wget -O bosh https://github.com/cloudfoundry/bosh-cli/releases/download/v5.5.1/bosh-cli-5.5.1-linux-amd64 && \
  chmod +x bosh && \
  sudo mv bosh /usr/local/bin/
wget -O /tmp/bbr.tar https://github.com/cloudfoundry-incubator/bosh-backup-and-restore/releases/download/v1.5.1/bbr-1.5.1.tar && \
  tar xvC /tmp/ -f /tmp/bbr.tar && \
  sudo mv /tmp/releases/bbr /usr/local/bin/
wget -O pivnet https://github.com/pivotal-cf/pivnet-cli/releases/download/v0.0.58/pivnet-linux-amd64-0.0.58 && \
  chmod +x pivnet && \
  sudo mv pivnet /usr/local/bin/
