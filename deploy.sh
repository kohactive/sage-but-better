#!/usr/bin/env bash

cd wp-content/themes/<project-name>
gulp --production
git add -f dist
cd ../../../
git commit -am "Production Build"

if [[ $1 ]]; then
  git push pantheon $1 -f
fi

git reset --hard HEAD~1
