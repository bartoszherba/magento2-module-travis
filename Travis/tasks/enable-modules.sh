#!/usr/bin/env bash
#### Enables required modules
MODULES=${1:-"--all"}

cd ${MAGE_ROOT}
php bin/magento module:enable $MODULES
