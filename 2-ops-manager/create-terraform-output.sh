#!/bin/bash

terraform output -state=$(find . -name terraform.tfstate) -json > terraform.out
