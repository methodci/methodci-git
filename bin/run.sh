#!/bin/sh

set +x

if [ ! -z "$NETRC_PASSWORD" ]; then
	> ~/.netrc cat <<EOT
machine github.com
login $NETRC_PASSWORD
password x-oauth-basic
EOT
fi

clone.sh