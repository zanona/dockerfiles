#!/usr/bin/env sh

# Publish draft release
# REPO=owner/repo
# TAG=v1.0.0

main() {
	ORIGIN=https://api.github.com
	TOKEN="Authorization: token $GITHUB_TOKEN"
	ACCEPT="Accept: application/vnd.github.v3+json"
	RELEASE_ID="$(curl -s -H "$TOKEN" -H "$ACCEPT" $ORIGIN/repos/$REPO/releases/tags/$TAG | jq .id)"
	if [ $RELEASE_ID = null ]; then
		>&2 echo "could not find release, please check your REPO and TAG env variables"
		exit 1
	fi;
	curl -s -X PATCH -H "$TOKEN" -H "$ACCEPT" $ORIGIN/repos/$REPO/releases/$RELEASE_ID -d '{"draft":false}' | jq -r .html_url
}

main "$@"
