#!/bin/bash
set -x
npm install gun@latest

git diff-index --quiet HEAD
if [[ "$?" == "0" ]]; then
	echo "no new version found."
	exit 1
fi

set -o pipefail
VERSION=$(npm info gun@latest version)
git config user.name "Dimension Bot"
git config user.email "bot@dimension.im"
git fetch --tags
git add .
git commit --message "new version: $VERSION"
git tag --force --annotate "$VERSION" --message "new version: $VERSION"
git push
git push --follow-tags
