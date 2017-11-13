#!/usr/bin/env bash
#### Copy module files from current travis directory to a module root path

echo Packing module files
tar -czf module.tar.gz .

mkdir -p ${MAGE_ROOT}/app/code/${MODULE_SLUG}

echo Extracting module files to ${MAGE_ROOT}/app/code/${MODULE_SLUG}
tar -xf module.tar.gz -C ${MAGE_ROOT}/app/code/${MODULE_SLUG}
