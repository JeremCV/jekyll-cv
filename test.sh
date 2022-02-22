#!/bin/bash
key=$HOME/Dropbox/.myconfig/github-docker-secret
export INPUT_DESTINATION=_site
export INPUT_SOURCE=.

/usr/bin/docker run --workdir /github/workspace --rm -e INPUT_SOURCE -e INPUT_DESTINATION -e GITHUB_ACTIONS=false -e CI=false \
-v "/var/run/docker.sock":"/var/run/docker.sock" \
-v "$(pwd)":"/github/workspace" \
ghcr.io/actions/jekyll-build-pages:v1.0.1
