create database "odk";
create user "odk" with password 'odk';
grant all privileges on database "odk" to "odk";
alter database "odk" owner to "odk";
-- \c "odk";
-- create schema "odk";
-- grant all privileges on schema "odk" to "odk";
-- alter schema "odk" owner to "odk";
