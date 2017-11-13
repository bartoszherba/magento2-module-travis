#!/usr/bin/env bash
#### Set deploy mode

MODE=${1:-"developer"}
cd ${MAGE_ROOT}

echo Setting magento deploy mode => $MODE
php bin/magento deploy:mode:set $MODE
