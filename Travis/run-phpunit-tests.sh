#!/usr/bin/env bash
# Execute PHPUnit tests

#### Copy configuration and run phpunit tests
cp -R Travis/config/phpunit.xml ${MAGE_ROOT}/dev/tests/unit/phpunit.xml

cd ${MAGE_ROOT}/dev/tests/unit
php ../../../vendor/bin/phpunit --coverage-clover build/logs/clover.xml --testsuite="Unit Tests"
