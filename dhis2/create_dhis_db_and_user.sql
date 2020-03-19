create database "dhis";
create user "dhis" with password 'dhis';
grant all privileges on database "dhis" to "dhis";
alter database "dhis" owner to "dhis";
