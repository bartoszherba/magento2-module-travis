#!/usr/bin/env bash
#### Clones Magento 2 from GitHub repository with a given version

echo Cloning Magento..
git clone https://github.com/magento/magento2 ${MAGE_ROOT}
cd ${MAGE_ROOT}

echo Setting Magento version ${MAGE_VER}
git checkout tags/${MAGE_VER} -b ${MAGE_VER}

composer install
