#!/bin/bash

pivnet releases -p p-healthwatch
pivnet accept-eula -p p-healthwatch -r 1.5.2
pivnet product-files -p p-healthwatch -r 1.5.2
pivnet download-product-files -p p-healthwatch -r 1.5.2 -i 343029
