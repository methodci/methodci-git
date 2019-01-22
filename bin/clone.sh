#!/bin/sh

set +x

git init
git remote add origin "$REMOTE_URL"
git fetch --no-tags origin +"$COMMIT_REF"
git checkout -qf FETCH_HEAD