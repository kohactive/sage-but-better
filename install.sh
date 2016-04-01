#!/usr/bin/env bash

cd wp-content/themes/<project-name>
npm install bower
npm install
bower install
gulp
