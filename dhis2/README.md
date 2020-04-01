# How to DHIS2

## Update Visualisations

DHIS2 caches data constantly and only rebuilds visualisations once a day. Therefore, when you want to see your recently captured data pulling through to your visualisations you will have to by pass this caching. The steps to do this are to follow.

### Perform Data Cleanup

The first thing to do on DHIS2 when trying to update data is to clean out the caches then rebuild the resource and analytics tables.

On the DHIS2 console open the `Apps` menu in the top right corner and click on the `Data Administration` App. First, we will clean out the caches. Click the `Maintenance` menu option on the left. Check all the check boxes and then click `Perform Maintenance` and wait until the maintenance succeeds.

Next, click the `Resource Tables` menu option on the left then click `Generate Tables` and wait until the table generation succeeds.

Finally, click on the `Analytics Tables` menu option. Click `Start Export` and wait until the export succeeds.

### Update Specific Visualisations

The previous step won't result in any changes on the dashboard. To check the data has come through you will need to navigate to a specific visualization's page and refresh it (`ctrl + F5`).

If this does not work, change one of the visualisations parameters, such as increasing the period of your data then click the `update` button.

> You may need to change a few parameters before the new data comes through. And every time you change parameters DHIS2 caches that specific configuration so in a single session you may need to come up with a couple fresh changes.

If this doesn't work, try to change your computers date to one day into the future. This will force you to login again but will also hopefully rebuild all visualizations.

> Do not rely on this method as it may lead to data loss and inconsistencies.
