# Travis configuration for a development of Magento2 modules

## Backgorund
This is a package with basic travis configuration which provides rapid initial setup for module's CI. All common command are split into tasks written in bash and therefore any build can be easily customized to fit anyones need with regards of development of modules. However, because all atom tasks can be freely combined it is also a good start point to build general puprose Magento2 CI configuration related to project's requirements.

## Folders Structure
* **/config** - keeps all configuration files which are copied to appropriate destinations upon build. Any customization should be done directly in a file
* **/tasks** - all core and common tasks which solves most basic problems like installing magento, executing deploy command and more. Therefore any build can be easily customized to any flavor eg. magento can be either cloned or required with composer
* **/bootstrap** - here are higher level scripts which serve as a wrappers for tasks and are responsible for preparing environment for tests

* **run-[scope]-tests.sh** - tests runners responsible for final configuration and execution of tests

## Configuration
Most of the common variable for configuration are available in .travis.yml file. This file includes all explicit environment variables however there are some variables used in tasks that are optional and related to a context of travis execution.

#### Implicit config variables
- **MAGENTO_USERNAME** - magento2 username required for git and composer
- **MAGENTO_PASSWORD** - magento2 password required for git and composer
- **FORK** - this variable is required if you want to run your own travis build for your forked repository. It requires fork's url
#### Explicit config variables
- **REPOSITORY** - repository url
- **MODULE_NAME** - composer module name
- **MODULE_SLUG** - module slug Vendor/ModuleName
- **MAGE_ROOT** - root for magento2 installation   
- **MAGE_MODE** - mage mode in which tests will be run [production/default/developer]
- **MAGE_VER** - default magento version
- **DB** - db name
- **DB_TEST** - test db name
- **DB_USER** - user for all dbs
- **DB_PASSWORD** - password for all dbs
- **DB_HOST** - db host
- **DISABLE_XDEBUG** - if xdebug should be disabled for performance reasons [true/false]