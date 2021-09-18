#!/bin/bash

set -C

gibo dump Composer Node > .gitignore
cat <<EOS
# PHPUnit
.phpunit.result.cache
EOS >> .gitignore

composer init -l MIT -s dev
composer require --dev phpunit/phpunit

npm init -y
npm install -D prettier @prettier/plugin-php

RESOURCE_URL=https://raw.githubusercontent.com/uguisu-an/php-bootstrap/main/resources

curl -S "{$RESOURCE_URL}/editorconfig.ini" ./.editorconfig
curl -S "{$RESOURCE_URL}/prettierrc.json" ./.prettierrc
curl -S "{$RESOURCE_URL}/prettierignore" ./.prettierignore
curl -S "{$RESOURCE_URL}/phpunit.xml" ./phpunit.xml

mkdir -p src/Domain/Models
mkdir -p src/Application/Services
mkdir -p tests/Unit

curl -S "{$RESOURCE_URL}/tests/TestCase.php" ./tests/TestCase.php
