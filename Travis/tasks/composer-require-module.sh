#!/usr/bin/env bash
#### Install composer module

BRANCH=${TRAVIS_BRANCH}
if [ -n ${FORK} ] 
then 
  echo Require module from: ${FORK}
  composer config -d ${MAGE_ROOT} repositories.module vcs ${FORK}
  BRANCH=dev-${BRANCH}
else 
  echo Require module from: ${REPOSITORY}
  composer config -d ${MAGE_ROOT} repositories.module vcs ${REPOSITORY}
fi

echo Require module branch: ${TRAVIS_BRANCH} commit: ${TRAVIS_COMMIT}
composer require -d ${MAGE_ROOT} ${MODULE_NAME}:${BRANCH}