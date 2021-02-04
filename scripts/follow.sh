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
git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
git fetch --tags
git add .
git commit --message "new version: $VERSION"
git push --force
git tag --force --annotate "$VERSION" --message "$VERSION"
git push --force --tags
