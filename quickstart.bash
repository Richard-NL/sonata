#!/usr/bin/env bash
composer install
chmod -R 777 app/logs app/cache
app/console doctrine:database:create
app/console doctrine:schema:create
app/console doctrine:fixtures:load
app/console sonata:page:create-site
cd web
bower install ../vendor/sonata-project/admin-bundle/bower.json
bower install  ../vendor/sonata-project/core-bundle/bower.json