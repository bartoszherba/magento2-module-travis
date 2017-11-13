#!/usr/bin/env bash
# Execute static tests

echo Running phpcs
vendor/bin/phpcs --standard=vendor/magento-ecg/coding-standard/EcgM2 --ignore=Test,vendor --colors --extensions="php,phtml" .

echo Running phpmd
vendor/bin/phpmd --exclude Test,vendor --suffixes php,phtml . text cleancode,codesize,controversial,design,naming,unusedcode

echo Running phpcpd
vendor/bin/phpcpd --exclude Test --exclude vendor --progress .
