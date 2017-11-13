#!/usr/bin/env bash
#### Configuring grunt along with installation of npm packages

echo Configure grunt

cp Travis/config/Gruntfile.js ${MAGE_ROOT}/Gruntfile.js
cp Travis/config/package.json ${MAGE_ROOT}/package.json
cp Travis/config/settings.json ${MAGE_ROOT}/dev/tests/js/jasmine/spec_runner/settings.json

cd ${MAGE_ROOT}

npm install

