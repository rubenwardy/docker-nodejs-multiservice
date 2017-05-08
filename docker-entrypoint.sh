#!/bin/bash

node --version

if [ "$TYPE" == "user" ]
then
	node apis/user/index.js
elif [ "$TYPE" == "bridge" ]
then
	node apis/bridge/index.js
elif [ "$TYPE" == "zone" ]
then
	node apis/zone/index.js
elif [ "$TYPE" == "mock" ]
then
	node apis/mock/index.js
else
	echo "Unknown application type. Set TYPE to one of user, bridge, zone, or mock"
	exit 1
fi
