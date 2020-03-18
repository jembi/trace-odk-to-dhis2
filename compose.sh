#!/bin/bash

set -e

pathToFolder=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

if [ "$1" == "up" ]; then
    # start up postgres
    sudo docker-compose -f "$pathToFolder/docker-compose-postgres.yml" up -d

    # Create DHIS db and user
    docker exec postgres bash -c "sleep 30s; su postgres -c 'psql postgres -c \"\\i create_dhis_db_and_user.sql;\"'"

    # Create db and user
    docker exec postgres bash -c "su postgres -c 'psql postgres -d dhis -c \"\\i dhis2.sql;\"'"

    # Start up DHIS
    sudo docker-compose -f "$pathToFolder/docker-compose-dhis.yml" up -d

    # start up openhim
    sudo docker-compose -f "$pathToFolder/docker-compose.yml" up -d

    # Create ODK db and user
    docker exec postgres bash -c "su postgres -c 'psql postgres -c \"\\i create_odk_db_and_user.sql;\"'"

    # start up ODK
    echo 'Creating the ODK container'
    sudo docker-compose -f "$pathToFolder/docker-compose-odk.yml" up -d
elif [ "$1" == "down" ]; then
    docker-compose -f "$pathToFolder"/docker-compose.yml -f "$pathToFolder"/docker-compose-odk.yml -f "$pathToFolder"/docker-compose-postgres.yml -f "$pathToFolder"/docker-compose-dhis.yml stop
elif [ "$1" == "destroy" ]; then
    docker-compose -f "$pathToFolder"/docker-compose.yml -f "$pathToFolder"/docker-compose-odk.yml -f "$pathToFolder"/docker-compose-postgres.yml -f "$pathToFolder"/docker-compose-dhis.yml down -v
else
    echo "Valid options are: up, down, or destroy"
fi
