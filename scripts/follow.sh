#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
set -x
npm install gun@latest
if [[ -z $(git status -s) ]]; then
	echo "no new version found."
	exit 0
else
	VERSION=$(npm info gun@latest version)
	git add .
	git commit -m "new version: $VERSION"
	git tag -a "$VERSION" -m "new version: $VERSION"
	git push --tags
fi
