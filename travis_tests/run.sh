#!/bin/bash
if [ "$TRAVIS_EVENT_TYPE" == "pull_request" ] || ( [ "$TRAVIS_EVENT_TYPE" == "push" ] && [ "$TRAVIS_BRANCH" == "master" ] ) then
 docker exec hw-test bash -c './travis_tests/test.sh'
fi
