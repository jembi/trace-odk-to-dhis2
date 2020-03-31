# ODK to DHIS2 Infrastructure Scripts

Useful Links:

- [ODK Central Docs](https://docs.opendatakit.org/getting-started/)
- [DHIS2 Docs](https://docs.dhis2.org/2.33/en/index.html)

## Setup

To setup run the following command

```bash
./compose up
```

To stop the containers run the following command

```bash
./compose down
```

To cleanup the project run the following command

```bash
./compose destroy
```

**Note:** The commands above assume that the system on which they are being run is configured to run docker commands without the **sudo** preface. If system is not configured for such, add the preface **sudo** to the commands like done below

```bash
sudo ./compose up
```

## Accessing the services

### OpenHIM

- Core Router (TLS): <https://localhost:5000>
- Core Router: <http://localhost:5001>
- Core API: <https://localhost:8888>
- Console: <http://localhost:9000>
- Username: **root@openhim.org**
- Password: **trace101**

### DHIS

- url: <http://localhost:8081>
- Username: **admin**
- Password: **district**

### ODK

- url: <http://localhost:8080>
- Username: **odk**
- password: **odk**

## Database backups

If changes are required within the database that needs to be part of the import, we will have to create a new export of the database. Execute the below commands to create a new database dump

This will create a new dump of the database in the current location of the existing SQL dump. The existing SQL dump will be overwritten. Because this SQL dump is volumed, the changes will reflect in the host machine SQL dump.

### ODK

```sh
docker exec postgres bash -c "su postgres -c 'pg_dump odk'" > ODKAggregate/odk.sql
```

### DHIS2

```sh
docker exec postgres bash -c "su postgres -c 'pg_dump dhis'" > dhis2/dhis2.sql
```
