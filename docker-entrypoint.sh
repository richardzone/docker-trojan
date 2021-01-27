#!/bin/sh

set -o pipefail
set -o errexit
set -o xtrace

if [ ! -f $CERT_PATH ] || [ ! -f $KEY_PATH ]; then
	echo 'Error: $CERT_PATH or $KEY_PATH is not set' >&2
	exit 1
fi

if [ -z "$PASSWORD" ]; then
	echo 'Error: $PASSWORD is not set' >&2
	exit 1
fi

sed -i '' -e "s/CERT_PATH_TO_REPLACE/$CERT_PATH/" -e "s/KEY_PATH_TO_REPLACE/$KEY_PATH/" -e "s/PASSWORD_TO_REPLACE/$PASSWORD/" trojan.json

# Run Trojan Server
exec "$@"
