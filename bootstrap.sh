#!/bin/bash

set -C

RESOURCE_URL=https://raw.githubusercontent.com/uguisu-an/php-bootstrap/main/resources

git init

composer init -l MIT
composer require --dev phpunit/phpunit

curl -s "${RESOURCE_URL}/package.json" > package.json
npm install -D prettier @prettier/plugin-php

curl -s "${RESOURCE_URL}/editorconfig.ini" > .editorconfig
curl -s "${RESOURCE_URL}/prettierrc.json" > .prettierrc
curl -s "${RESOURCE_URL}/prettierignore" > .prettierignore
curl -s "${RESOURCE_URL}/phpunit.xml" > phpunit.xml

gibo dump Composer Node > .gitignore
curl -s "${RESOURCE_URL}/gitignore" >> .gitignore

mkdir -p src/Domain/Models
mkdir -p src/Application/Services
mkdir -p tests/Unit

curl -s "${RESOURCE_URL}/tests/TestCase.php" > tests/TestCase.php
