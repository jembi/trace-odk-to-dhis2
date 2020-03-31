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

#### ODK Collect

> For this setup, **your computer needs to be connected to the same Wi-Fi network as your mobile phone**.

##### Download ODK Collect

To collect data in ODK, users need the mobile application `ODK Collect` available for Android on the [Google Play store](https://play.google.com/store/apps/details?id=org.odk.collect.android).

##### Get local computer's IP

Before we configure the ODK Collect app, we need to get the **IP address** to which our local machine is broadcasting the ODK Aggregate API.

To do this, open your Ubuntu `Settings` and click on the `Wi-Fi` menu option. On the Wi-Fi page find the Wi-Fi network that you are connected to and click the `gear icon` to open up the network details. In the new modal on the `details` tab, find the `IPv4 Address`. This value is your computers broadcasting IP. Take note of this value as we will need it in a future step.

##### Connect ODK Collect to ODK Aggregate

Once you have downloaded ODK Collect, open the App and click on the kebab menu (3 dot icon) in the top right. Click on `General Settings` from the list. On this page click on the URL field. This is where you need to input your computer's IP address. Start with `http://` then your `IPv4 Address` and finally add `:8080` to connect to the right port. Your URL should look something like this `http://192.168.123.123:8080`. Click `OK` to save your URL. Next click on the `Username` field. Input the value `odk` then click `OK`. Finally click on the `Password` field. Input the value `odk`, again, and click `OK`.

Your app should now be able to connect to the server. To test this, click the back button twice on your device to return to the main menu. Here you should see a list of `Form` options. Click on the `Get Blank Form` option. On this page you should only see one form option: **TRACE-ODK-DHIS2 Data collection**. Check the checkbox on the right then click the button labelled `Get Selected`. You should see a notification popup indicating form download **Success**. Click `OK` to dismiss.

Now we can collect data for ODK Aggregate instance. On the main menu of ODK Collect click the `Fill Blank Form` option, then click on the **TRACE-ODK-DHIS2 Data collection** form. This will open up the form and allow you to fill in details. Fill in the details on this page. When all the required form fields are complete, you can navigate to the next page of this form by `Swiping` the screen to the left.

After completing all the form pages you will reach the final screen with a button to `Save Form and Exit`. Click this option to return to the main menu. You will now see that the option `Edit Saved Form` has a `(1)` appended to it. If you need to make changes to your form do so there. If not, click on the option `Send Finalised Form`. Check the checkbox on the right of the filled in form, then click `Send Selected`. Click back to return to the main menu.

We can now view our data on ODK Aggregate. On your computer, open a browser and navigate to your [ODK Aggregate instance](http://localhost:8080). If you haven't logged in before, do so now. The first page of ODK Aggregate should be the form submissions page. Here you should see the form data you submitted.

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
