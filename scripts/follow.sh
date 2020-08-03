#!/bin/bash
set -x
npm install gun@latest
if [[ -n $(git status -s) ]]; then
	echo "no new version found."
	exit 0
fi
VERSION=$(npm info gun version)
git add .
git commit -m "new version: $VERSION"
git tag -a "$VERSION" -m "new version: $VERSION"
git push --tags
