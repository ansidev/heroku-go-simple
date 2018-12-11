#!/bin/bash

APP=$1

if [ -z "$1" ]
then
    echo "You don't pass the app name as first parameter."
    exit
fi

docker build -t registry.heroku.com/$APP/web . --no-cache=true
heroku container:login
heroku container:push web --app $APP
heroku container:release web --app $APP
