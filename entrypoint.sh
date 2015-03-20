#!/bin/bash

if [ -z "$PEER_PORT" ]; then
	echo "No peer port defined. Exiting."
        exit 1	
fi

if [ -z "$RPC_USERNAME" ]; then
	echo "No RPC username defined. Exiting."
        exit 1	
fi

if [ -z "$RPC_PASSWORD" ]; then
	echo "No RPC password defined. Exiting."
        exit 1	
fi

mkdir -p /transmission/{config,downloads/{completed,incomplete}}

cp /tmp/settings.json /transmission/config/settings.json

sed -i "s/@@RPC_PASSWORD@@/$RPC_PASSWORD/g" /transmission/config/settings.json
sed -i "s/@@RPC_USERNAME@@/$RPC_USERNAME/g" /transmission/config/settings.json
sed -i "s/@@PEER_PORT@@/$PEER_PORT/g"	    /transmission/config/settings.json

exec "$@"