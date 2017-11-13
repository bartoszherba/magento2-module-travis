#!/usr/bin/env bash
# Bootstrap env for unit tests

./Travis/tasks/github-clone-magento.sh
./Travis/tasks/install-module-from-files.sh
./Travis/tasks/enable-modules.sh