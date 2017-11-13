#!/usr/bin/env bash
# Execute PHPUnit tests

cp -R Travis/config/integration.xml ${MAGE_ROOT}/dev/tests/integration/phpunit.xml

sed -e "s/\DB_HOST/${DB_HOST}/" \
 -e "s/\DB_USER/${DB_USER}/" \
 -e "s/\DB_PASSWORD/${DB_PASSWORD}/" \
 -e "s/\DB_TEST/${DB_TEST}/" \
 Travis/config/install-config-mysql.php > ${MAGE_ROOT}/dev/tests/integration/etc/install-config-mysql.php

cd ${MAGE_ROOT}/dev/tests/integration
php ../../../vendor/bin/phpunit --coverage-clover build/logs/clover.xml --testsuite="Integration Tests"