## DHIS2 Facilities

This DHIS2 instance contains a subset of health related facilities registered in South Africa. Only the full facility lists of the Eastern Cape and Western Cape remain. The other provinces have had some or all their facility data removed in order to reduce the database size of this tutorial.

The `Event` data included in the database dump is all linked to the following four facilities:

| Facility Name | Facility Code | DHIS2 Org Unit ID |
|-|-|-|
| ec Aberdeen EMS Station | 603433 | MDyxwSMVIrY |
| ec Civic Centre Clinic (Mthatha) | 316115 | h5eKJjJzzsv |
| wc Beaufort West CDC | 236115 | h8bBL7YEs5j |
| wc Wynberg Clinic | 352533 | pVVKnK9IOZX |

If you wish to add data to different facilities, you can find a list of available facilities at <http://localhost:8081/api/organisatioUnits>. To get your chosen facility's `facility code` copy the facility's DHIS2 ID and append this to the previous url. For example, <http://localhost:8081/api/organisatioUnits/h4rBGnDtQMZ> - which corresponds to **kz Durban University of Technology Clinic**.

> Make sure your chosen facility has a `coordinates` field. This field is required if you want the facility data to appear on any map. The coordinates field for the Durban example above is as follows: `<coordinates>[31.011662,-29.848529]</coordinates>`
