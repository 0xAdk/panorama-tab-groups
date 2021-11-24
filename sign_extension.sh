#!/usr/bin/env sh

echo -n "JWT issuer / WEB_EXT_API_KEY: "
read WEB_EXT_API_KEY

if [ "$WEB_EXT_API_KEY" == "" ]; then
	echo "No value given. aborting."
	exit
fi

echo -n "JWT secret / WEB_EXT_API_SECRET: "
read WEB_EXT_API_SECRET

if [ "$WEB_EXT_API_SECRET" == "" ]; then
	echo "No value given. aborting."
	exit
fi

echo "Signing extension with given api key and secret..."
web-ext sign \
	-s src \
	--channel unlisted \
	--api-key $WEB_EXT_API_KEY \
	--api-secret $WEB_EXT_API_SECRET
