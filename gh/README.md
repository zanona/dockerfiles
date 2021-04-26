# Github CLI

This package contains Github CLI, and a special program for publishing a
previous github draft release.

To use it just run with the following exported env variables

```sh
export GITHUB_TOKEN=xxx
export REPO=owner/repo
export TAG=v1.0.0

gh-publish-release
```

This will simply convert the release from draft to published.
