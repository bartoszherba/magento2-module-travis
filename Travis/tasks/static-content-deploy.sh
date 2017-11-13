#!/usr/bin/env bash
#### Run static content deploy

OPTIONS=${1:-""}

php ${MAGE_ROOT}/bin/magento setup:static-content:deploy $OPTIONS
