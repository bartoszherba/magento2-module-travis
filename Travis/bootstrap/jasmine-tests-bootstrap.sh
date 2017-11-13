#!/usr/bin/env bash
# Bootstrap env for javascript tests

./Travis/tasks/github-clone-magento.sh
./Travis/tasks/install-module-from-files.sh
./Travis/tasks/enable-modules.sh
./Travis/tasks/create-database.sh
./Travis/tasks/install-magento.sh
./Travis/tasks/static-content-deploy.sh
./Travis/tasks/config-grunt.sh