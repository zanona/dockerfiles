FROM alpine/git
RUN apk update
RUN apk add github-cli npm curl jq
ADD release.sh /usr/local/bin/gh-publish-release
