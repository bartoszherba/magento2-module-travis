#!/usr/bin/env bash
#### Magento 2 Integrator installation

composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition:${MAGE_VER} ${MAGE_ROOT}
