#!/bin/bash

set -C

npm install -D prettier @prettier/plugin-php

RESOURCE_URL=https://raw.githubusercontent.com/uguisu-an/php-bootstrap/main/resources

curl -S "{$RESOURCE_URL}/editorconfig.ini" ./.editorconfig
curl -S "{$RESOURCE_URL}/prettierrc.json" ./.prettierrc
curl -S "{$RESOURCE_URL}/prettierignore" ./.prettierignore
