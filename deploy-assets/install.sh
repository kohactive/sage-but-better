#!/usr/bin/env bash

cd wp-content/themes/<theme-dir>
npm install bower
npm install
bower install
gulp
