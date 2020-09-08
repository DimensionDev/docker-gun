#!/bin/bash
set -x
npm install gun@latest

git diff-index --quiet HEAD
if [[ "$?" == "0" ]]; then
	echo "no new version found."
	exit
fi

set -o pipefail
VERSION=$(npm info gun@latest version)
git config user.name "github-actions"
git config user.email "github-actions@github.com"
git fetch --tags
git add .
git commit --message "new version: $VERSION"
git tag --force --annotate "$VERSION" HEAD
git push --force
git push --force --tags
