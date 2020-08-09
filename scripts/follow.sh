#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
set -x
npm install gun@latest
if [[ -z $(git status -s) ]]; then
	echo "no new version found."
else
	VERSION=$(npm info gun@latest version)
	git config user.name "Dimension Bot"
	git config user.email "bot@dimension.im"
	git fetch --tags
	git add .
	git commit --message "new version: $VERSION"
	git tag --force --annotate "$VERSION" --message "new version: $VERSION"
	git push --force --tags
	git push
fi
