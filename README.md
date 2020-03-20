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

- Console: <http://localhost:9000>
- Username: **root@openhim.org**
- Password: **trace101**

### DHIS

- url: <http://localhost:8081>
- Username: **admin**
- Password: **district**

### ODK

- url: <http://localhost:8088/ODKAggregate>
- Username: **odk**
- password: **odk**
