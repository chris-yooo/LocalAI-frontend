#!/bin/sh

if [ -z "$API_HOST" ]
then
    API_HOST='http://195.201.170.57:8080'
fi

echo "REACT_APP_API_HOST=$API_HOST" >> ./.env
npm run build
exec serve -s ./build
