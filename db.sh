#!/usr/bin/env bash

APP_URL=`cat appurl.txt`
APP_URL=`echo $APP_URL | sed s/https/http/`

PATH=$PATH:$PWD/vendor/node/bin:$PWD/.wpcli:$PWD/.heroku/vendor/mysql/bin
LD_LIBRARY_PATH=$LIBRARY_PATH:$PWD/.heroku/vendor/mysql/lib
LIBRARY_PATH=$LIBRARY_PATH:$PWD/.heroku/vendor/mysql/lib

ORIG_JAWSDB_URL=$JAWSDB_URL
JAWSDB_URL=$STAGING_DB_URL wp db export staging.bk.sql
JAWSDB_URL=$ORIG_JAWSDB_URL
wp db import staging.bk.sql


echo "SETTING URL TO: $APP_URL"

wp option update home $APP_URL
wp option update siteurl $APP_URL
