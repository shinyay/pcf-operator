#!/bin/bash

pivnet releases -p pivotal-mysql
pivnet accept-eula -p pivotal-mysql -r 2.5.4
pivnet product-files -p pivotal-mysql -r 2.5.4
pivnet download-product-files -p pivotal-mysql -r 2.5.4 -i 359521
