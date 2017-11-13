#!/usr/bin/env bash
# Bootstrap env for integration tests

./Travis/tasks/github-clone-magento.sh
./Travis/tasks/install-module-from-files.sh
./Travis/tasks/enable-modules.sh
./Travis/tasks/create-database.sh ${DB_TEST}
./Travis/tasks/install-magento.sh ${DB_TEST}
./Travis/tasks/set-deploy-mode.sh developer