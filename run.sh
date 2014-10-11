#!/bin/bash

# Environmental variable
COVERALLS_TOKEN="$WERCKER_GOVERALLS_TOKEN"

# Check and Set Default value
if [ -z "${COVERALLS_TOKEN}" ]; then
    fail "Please set your Coveralls token."
fi

go get github.com/axw/gocov/gocov
go get github.com/mattn/goveralls

go test --covermode=count -coverprofile=profile.cov ./...

GIT_BRANCH=$WERCKER_GIT_BRANCH
goveralls -coverprofile=profile.cov -service=wercker.com -repotoken $COVERALLS_TOKEN
                              

