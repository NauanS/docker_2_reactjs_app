#!/bin/bash
ambiente=$1
parametro2=$2

case "$ambiente" in
    "prod")
        echo "Starting application in PRODUCTION environment"
        docker-compose -f docker-compose.yml -f docker-compose.prod.yml up $2 $3
    ;;
    "app")
        echo "Starting application in an APPROVAL environment"
        docker-compose -f docker-compose.yml -f docker-compose.app.yml up $2 $3
    ;;
    "dev")
        echo "Starting application in a DEVELOPMENT environment"
        docker-compose -f docker-compose.yml -f docker-compose.override.yml up $2 $3
    ;;
    *)
        echo "The informed environment does not exist!"
    ;;
esac