#!/usr/bin/env bash
# Execute javascript jasmine tests

SPEC=${1:-"blank"}

mkdir -p ${MAGE_ROOT}/dev/tests/js/jasmine/tests/app/code/${MODULE_SLUG}
cp -R Test/js/* ${MAGE_ROOT}/dev/tests/js/jasmine/tests/app/code/${MODULE_SLUG}

cd ${MAGE_ROOT}
grunt spec:$SPEC