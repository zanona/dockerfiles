FROM alpine/git
RUN apk update
RUN apk add github-cli curl jq
ADD release.sh /usr/local/bin/gh-publish-release
