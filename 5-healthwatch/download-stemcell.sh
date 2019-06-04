#!/bin/bash

pivnet releases -p stemcells-ubuntu-xenial
pivnet accept-eula -p stemcells-ubuntu-xenial -r 170.76
pivnet product-files -p stemcells-ubuntu-xenial -r 170.76
pivnet download-product-files -p stemcells-ubuntu-xenial -r 170.76 -i 389338
