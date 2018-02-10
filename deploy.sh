#!/usr/bin/env bash

cd wp-content/themes/<project-name>
gulp --production
git add -f dist
cd ../../../
git commit -am "Production Build"

if [[ $1 ]]; then
  git push pantheon $1 -f
else
  echo "No branch name specified, skipping git push"
fi

git reset --hard HEAD~1
