#!/bin/bash

set -C

composer init -l MIT -s dev
composer require --dev phpunit/phpunit

npm init -y
npm install -D prettier @prettier/plugin-php

RESOURCE_URL=https://raw.githubusercontent.com/uguisu-an/php-bootstrap/main/resources

curl -s "{$RESOURCE_URL}/editorconfig.ini" > ./.editorconfig
curl -s "{$RESOURCE_URL}/prettierrc.json" > ./.prettierrc
curl -s "{$RESOURCE_URL}/prettierignore" > ./.prettierignore
curl -s "{$RESOURCE_URL}/phpunit.xml" > ./phpunit.xml

gibo dump Composer Node > .gitignore
curl -s "{$RESOURCE_URL}/gitignore" >> .gitignore

mkdir -p src/Domain/Models
mkdir -p src/Application/Services
mkdir -p tests/Unit

curl -s "{$RESOURCE_URL}/tests/TestCase.php" > ./tests/TestCase.php
