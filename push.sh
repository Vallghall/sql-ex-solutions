#!/bin/sh

git add .
git commit -m "Add solutions for $1$2"
git pull --rebase
git push --force