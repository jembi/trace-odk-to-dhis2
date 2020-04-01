# ODK to DHIS2 Infrastructure Scripts

The following scripts will set up the entire tutorial architecture. Very few manual steps are required. To set up the system from scratch should take less than 30 minutes on a decent internet connection. You will require about 3GB of bandwidth.

Prerequisites:

- Ubuntu 18.04 Desktop
- [Docker Compose](https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-18-04) installed
- An Android smartphone (with access to Google Play Store)
- Wi-Fi access for Computer and Smartphone
- Experience working on Linux Terminal

## System Setup

To **setup**, run the following command

```bash
./compose up
```

To **stop** the containers, run the following command

```bash
./compose stop
```

To **cleanup** the project, run the following command

```bash
./compose down
```

**Note:** The commands above assume that the system on which they are being run is configured to run docker commands without the **sudo** preface. If your system is not configured as such, add the **sudo** preface to the commands as seen below:

```bash
sudo ./compose up
```

## OpenHIM

Useful Links:

- [OpenHIM Docs](http://openhim.org/)
- [OpenHIM First Login](http://openhim.org/docs/getting-started/install#first-time-login)

### Accessing the **OpenHIM Core** services

- Core Router (TLS): <https://localhost:5000>
- Core Router: <http://localhost:5001>
- Core API: <https://localhost:8888>

### Accessing the **OpenHIM Console**

- Console: <http://localhost:9000>
- Username: **root@openhim.org**
- Password: **trace101**

## Mapping Mediator

Useful Links:

- [Mapping Mediator Repo](https://github.com/jembi/openhim-mediator-mapping)
- [Documentation](https://jembi.github.io/openhim-mediator-mapping/)

### Accessing the **Mapping Mediator**

- url: <http://localhost:3003/{endpoint}>

## DHIS2

Useful Links:

- [DHIS2 Docs](https://docs.dhis2.org/2.33/en/index.html)

### Accessing the DHIS2 Console

- url: <http://localhost:8081>
- Username: **admin**
- Password: **district**

### Update Visualizations

DHIS2 caches data constantly and only rebuilds visualizations once a day. Therefore, when you want to see your recently captured data pulling through to your visualizations you will have to bypass this caching. The steps to do this are to follow.

#### Perform Data Cleanup

The first thing to do on DHIS2 when trying to update data is to clean out the caches then rebuild the resource and analytics tables.

On the DHIS2 console open the `Apps` menu in the top right corner and click on the `Data Administration` App. First, we will clean out the caches. Click the `Maintenance` menu option on the left. Check all the checkboxes and then click `Perform Maintenance` and wait until the maintenance succeeds.

Next, click the `Resource Tables` menu option on the left then click `Generate Tables` and wait until the table generation succeeds.

Finally, click on the `Analytics Tables` menu option. Click `Start Export` and wait until the export succeeds.

#### Update Specific Visualizations

The previous step won't result in any changes to the dashboard. To check the data has come through you will need to navigate to a specific visualization's page and refresh it (`ctrl + F5`).

If this does not work, change one of the parameters of the visualization, such as increasing the period of your data then click the `update` button.

> You may need to change a few parameters before the new data comes through. And every time you change parameters DHIS2 caches that specific configuration so in a single session you may need to come up with a couple of fresh changes.

If this doesn't work, try to change the date of your computer to one day into the future. This will force you to login again but will also hopefully rebuild all visualizations.

> Do not rely on this method as it may lead to data loss and inconsistencies.

### DHIS2 Facilities

This DHIS2 instance contains a subset of health-related facilities registered in South Africa. Only the full facility lists of the Eastern Cape and Western Cape remain. The other provinces have had some or all their facility data removed to reduce the database size of this tutorial.

The `Event` data included in the database dump is all linked to the following four facilities:

| Facility Name | Facility Code | DHIS2 Org Unit ID |
|-|-|-|
| ec Aberdeen EMS Station | 603433 | MDyxwSMVIrY |
| ec Civic Centre Clinic (Mthatha) | 316115 | h5eKJjJzzsv |
| wc Beaufort West CDC | 236115 | h8bBL7YEs5j |
| wc Wynberg Clinic | 352533 | pVVKnK9IOZX |

If you wish to add data to different facilities, you can find a list of available facilities at <http://localhost:8081/api/organisatioUnits>. To get your chosen facility's `facility code` copy the facility's DHIS2 ID and append this to the previous url. For example, <http://localhost:8081/api/organisationUnits/Wam5frBOIS4> - which corresponds to **wc Saldanha Bay Port Health**, code `657051`.

> Make sure your chosen facility has a `geometry` field. This field is required if you want the facility data to appear on any map. The coordinates field for the Saldanha example above is as follows: `<geometry>POINT (17.946725 -33.02041)</geometry>`

## ODK

Useful Links:

- [ODK Aggregate Docs](https://docs.opendatakit.org/getting-started/)
- [ODK Collect Docs](https://docs.opendatakit.org/collect-connect-aggregate/)

### Accessing the ODK Aggregate Console

- url: <http://localhost:8080>
- Username: **odk**
- password: **odk**

### ODK Collect

> For this setup, **your computer needs to be connected to the same Wi-Fi network as your mobile phone**.

#### Download ODK Collect

To collect data in ODK, users need the mobile application `ODK Collect` available for Android on the [Google Play store](https://play.google.com/store/apps/details?id=org.odk.collect.android).

#### Get local computer's IP

Before we configure the ODK Collect app, we need to get the **IP address** to which our local machine is broadcasting the ODK Aggregate API.

To do this, open your Ubuntu `Settings` and click on the `Wi-Fi` menu option. On the Wi-Fi settings page, find the Wi-Fi network that you are connected to and click the `gear icon` to open up the network details. In the new modal on the `details` tab, find the `IPv4 Address`. This value is your computer's broadcasting IP. Take note of this value as we will need it in a future step.

#### Connect ODK Collect to ODK Aggregate

Once you have downloaded ODK Collect, open the App and click on the kebab menu (3 dot icon) in the top right. Click on `General Settings` from the list. On this page click on the URL field. This is where you need to input your computer's IP address. Start with `http://` then your `IPv4 Address` and finally add `:8080` to connect to the right port. Your URL should look something like this `http://192.168.123.123:8080`. Click `OK` to save your URL. Next click on the `Username` field. Input the value `odk` then click `OK`. Finally, click on the `Password` field. Input the value `odk`, again, and click `OK`.

Your app should now be able to connect to the server. To test this, click the back button twice on your device to return to the main menu. Here you should see a list of `Form` options. Click on the `Get Blank Form` option. On this page, you should only see one form option: **TRACE-ODK-DHIS2 Data collection**. Check the checkbox on the right then click the button labeled `Get Selected`. You should see a notification popup indicating form download **Success**. Click `OK` to dismiss.

Now we can collect data for ODK Aggregate instance. On the main menu of ODK Collect click the `Fill Blank Form` option, then click on the **TRACE-ODK-DHIS2 Data collection** form. This will open up the form and allow you to fill in details. Fill in the details on this page. When all the required form fields are complete, you can navigate to the next page of this form by `Swiping` the screen to the left.

After completing all the form pages you will reach the final screen with a button to `Save Form and Exit`. Click this option to return to the main menu. You will now see that the option `Edit Saved Form` has a `(1)` appended to it. If you need to make changes to your form do so there. If not, click on the option `Send Finalised Form`. Check the checkbox on the right of the filled-in form, then click `Send Selected`. Click back to return to the main menu.

We can now view our data on ODK Aggregate. On your computer, open a browser and navigate to your [ODK Aggregate instance](http://localhost:8080). If you haven't logged in before, do so now. The first page of ODK Aggregate should be the form submissions page. Here you should see the form data you submitted.

#### Confirm data forwarding to DHIS2

After submitting data to ODK Aggregate, this data should automatically be forwarded to DHIS2 via the OpenHIM. To confirm this, log into the OpenHIM Console at <http://localhost:9000>. Once on the console click on the `Transactions Log` option in the menu on the left. Your data should appear within a transaction on this page.

> Note: ODK appears to have a bug preventing the first form from being published to the downstream service. This is easily overcome by sending through a second data set.

If your data is not showing up on the OpenHIM Transaction log, open the ODK Aggregate Console and click on the `Form Management` tab. Then click on the subordinate `Published Data` tab. Issues with the Publisher can be diagnosed here.

## Database backups

If changes are required within the database that needs to be part of the import, we will have to create a new export of the database. Execute the below commands to create a new database dump

This will create a new dump of the database in the current location of the existing SQL dump. The existing SQL dump will be overwritten. Because this SQL dump is volumed, the changes will reflect in the host machine SQL dump.

### ODK Postgres DB Dump

```sh
docker exec postgres bash -c "su postgres -c 'pg_dump odk'" > ODKAggregate/odk.sql
```

### DHIS2 Postgres DB Dump

```sh
docker exec postgres bash -c "su postgres -c 'pg_dump dhis'" > dhis2/dhis2.sql
```
