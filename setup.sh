#!/bin/bash

set -e

pathToFolder=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

# start up openhim
sudo docker-compose -f "$pathToFolder/docker-compose.yml" up -d

# start up postgres
echo 'Creating postgres container'
sudo docker-compose -f "$pathToFolder/docker-compose-postgres.yml" up -d

docker exec postgres bash -c "sleep 30s; su postgres -c 'psql postgres -c \"\\i create_db_and_user.sql;\"'"

# start up ODK
echo 'Creating the ODK container'
sudo docker-compose -f "$pathToFolder/docker-compose-odk.yml" up -d
