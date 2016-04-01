#!/usr/bin/env bash

APP_URL=`php -r "print json_decode('$RECEIVE_DATA', 1)[\"push_metadata\"][\"app_info\"][\"web_url\"];"`

echo "----> APP URL DETECTED AS: $APP_URL"
echo $APP_URL > appurl.txt

CWD=$PWD

PATH=$PATH:$PWD/vendor/node/bin:$PWD/.wpcli:$PWD/.heroku/vendor/mysql/bin
LD_LIBRARY_PATH=$LIBRARY_PATH:$PWD/.heroku/vendor/mysql/lib
LIBRARY_PATH=$LIBRARY_PATH:$PWD/.heroku/vendor/mysql/lib

cd wp-content/themes/<project-name>
npm install bower
npm install
./node_modules/.bin/bower install
./node_modules/.bin/gulp --production

cd "$CWD"
