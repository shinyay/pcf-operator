#!/bin/bash

pivnet accept-eula -p elastic-runtime -r 2.5.4
pivnet product-files -p elastic-runtime -r 2.5.4
pivnet download-product-files -p elastic-runtime -r 2.5.4 -i 378195
