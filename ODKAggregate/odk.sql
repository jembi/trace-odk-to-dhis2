--
-- PostgreSQL database dump
--

-- Dumped from database version 11.7 (Debian 11.7-2.pgdg100+1)
-- Dumped by pg_dump version 11.7 (Debian 11.7-2.pgdg100+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: odk; Type: SCHEMA; Schema: -; Owner: odk
--

CREATE SCHEMA odk;


ALTER SCHEMA odk OWNER TO odk;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: TRACE_ODK_DHIS2_DATA_COLLECTION_CORE; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk."TRACE_ODK_DHIS2_DATA_COLLECTION_CORE" (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "_MODEL_VERSION" integer,
    "_UI_VERSION" integer,
    "_IS_COMPLETE" boolean,
    "_SUBMISSION_DATE" timestamp without time zone,
    "_MARKED_AS_COMPLETE_DATE" timestamp without time zone,
    "P_HIV_STATUS_HIV_STATUS" character varying(255),
    "PATIENT_RESIDENCE_DATA_PATIENT_NATIONALITY" character varying(255),
    "PATIENT_RESIDENCE_DATA_SUBURB" character varying(255),
    "PATIENT_RESIDENCE_DATA_OTHER_NATIONALITY" character varying(255),
    "META_INSTANCE_ID" character varying(255),
    "P_HIV_STATUS_RTRI_RESULT" character varying(255),
    "PATIENT_DATA_SEX" character varying(255),
    "TEST_DETAILS_SUBMISSION_DATE_RAW" character varying(255),
    "PATIENT_DATA_ID_NUMBER" numeric(38,10),
    "PATIENT_DATA_SURNAME" character varying(255),
    "PATIENT_RESIDENCE_DATA_TOWN" character varying(255),
    "HEALTHCARE_WORKER_HCWORKERFIRSTNAME" character varying(255),
    "FACILITY_DATA_FACILITY_ID" character varying(255),
    "TEST_DETAILS_SUBMISSION_DATE" timestamp without time zone,
    "HEALTHCARE_WORKER_HCWORKERDESIGNATION" character varying(255),
    "FACILITY_DATA_FACILITY_NAME" character varying(255),
    "TEST_DETAILS_RTRI_TESTDATE_RAW" character varying(255),
    "PATIENT_DATA_FIRSTNAME" character varying(255),
    "PATIENT_RESIDENCE_DATA_OTHER_PROVINCE" character varying(255),
    "PATIENT_DATA_MIDDLENAME" character varying(255),
    "PATIENT_DATA_HEALTH_ID" character varying(255),
    "TEST_DETAILS_RTRI_TESTDATE" timestamp without time zone,
    "PATIENT_DATA_AGE" integer,
    "PATIENT_RESIDENCE_DATA_PROVINCE" character varying(255),
    "HEALTHCARE_WORKER_HCWORKERSURNAME" character varying(255)
);


ALTER TABLE odk."TRACE_ODK_DHIS2_DATA_COLLECTION_CORE" OWNER TO odk;

--
-- Name: _backend_actions; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._backend_actions (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "LAST_REVISION" timestamp without time zone
);


ALTER TABLE odk._backend_actions OWNER TO odk;

--
-- Name: _form_data_model; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._form_data_model (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "URI_SUBMISSION_DATA_MODEL" character varying(80) NOT NULL,
    "PARENT_URI_FORM_DATA_MODEL" character varying(80) NOT NULL,
    "ORDINAL_NUMBER" integer NOT NULL,
    "ELEMENT_TYPE" character varying(80) NOT NULL,
    "ELEMENT_NAME" character varying(249),
    "PERSIST_AS_COLUMN_NAME" character varying(80),
    "PERSIST_AS_TABLE_NAME" character varying(80),
    "PERSIST_AS_SCHEMA_NAME" character varying(80)
);


ALTER TABLE odk._form_data_model OWNER TO odk;

--
-- Name: _form_info; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._form_info (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "_MODEL_VERSION" integer,
    "_UI_VERSION" integer,
    "_IS_COMPLETE" boolean,
    "_SUBMISSION_DATE" timestamp without time zone,
    "_MARKED_AS_COMPLETE_DATE" timestamp without time zone,
    "FORM_ID" character varying(249)
);


ALTER TABLE odk._form_info OWNER TO odk;

--
-- Name: _form_info_fileset; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._form_info_fileset (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "_PARENT_AURI" character varying(80),
    "_ORDINAL_NUMBER" integer NOT NULL,
    "_TOP_LEVEL_AURI" character varying(80),
    "ROOT_ELEMENT_MODEL_VERSION" integer,
    "IS_ENCRYPTED_FORM" boolean,
    "IS_DOWNLOAD_ALLOWED" boolean,
    "LANGUAGE_CODE" character varying(8),
    "FORM_NAME" character varying(249),
    "DESCRIPTION" character varying(8192),
    "DESCRIPTION_URL" character varying(2048)
);


ALTER TABLE odk._form_info_fileset OWNER TO odk;

--
-- Name: _form_info_manifest_bin; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._form_info_manifest_bin (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "_PARENT_AURI" character varying(80),
    "_ORDINAL_NUMBER" integer NOT NULL,
    "_TOP_LEVEL_AURI" character varying(80),
    "UNROOTED_FILE_PATH" character varying(4096),
    "CONTENT_TYPE" character varying(80),
    "CONTENT_LENGTH" integer,
    "CONTENT_HASH" character varying(255)
);


ALTER TABLE odk._form_info_manifest_bin OWNER TO odk;

--
-- Name: _form_info_manifest_blb; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._form_info_manifest_blb (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "_TOP_LEVEL_AURI" character varying(80),
    "VALUE" bytea NOT NULL
);


ALTER TABLE odk._form_info_manifest_blb OWNER TO odk;

--
-- Name: _form_info_manifest_ref; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._form_info_manifest_ref (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "_DOM_AURI" character varying(80) NOT NULL,
    "_SUB_AURI" character varying(80) NOT NULL,
    "_TOP_LEVEL_AURI" character varying(80),
    "PART" integer NOT NULL
);


ALTER TABLE odk._form_info_manifest_ref OWNER TO odk;

--
-- Name: _form_info_submission_association; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._form_info_submission_association (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "URI_MD5_SUBMISSION_FORM_ID" character varying(80) NOT NULL,
    "URI_MD5_FORM_ID" character varying(80) NOT NULL,
    "SUBMISSION_FORM_ID" character varying(249),
    "IS_PERSISTENCE_MODEL_COMPLETE" boolean,
    "IS_SUBMISSION_ALLOWED" boolean,
    "URI_SUBMISSION_DATA_MODEL" character varying(80)
);


ALTER TABLE odk._form_info_submission_association OWNER TO odk;

--
-- Name: _form_info_xform_bin; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._form_info_xform_bin (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "_PARENT_AURI" character varying(80),
    "_ORDINAL_NUMBER" integer NOT NULL,
    "_TOP_LEVEL_AURI" character varying(80),
    "UNROOTED_FILE_PATH" character varying(4096),
    "CONTENT_TYPE" character varying(80),
    "CONTENT_LENGTH" integer,
    "CONTENT_HASH" character varying(255)
);


ALTER TABLE odk._form_info_xform_bin OWNER TO odk;

--
-- Name: _form_info_xform_blb; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._form_info_xform_blb (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "_TOP_LEVEL_AURI" character varying(80),
    "VALUE" bytea NOT NULL
);


ALTER TABLE odk._form_info_xform_blb OWNER TO odk;

--
-- Name: _form_info_xform_ref; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._form_info_xform_ref (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "_DOM_AURI" character varying(80) NOT NULL,
    "_SUB_AURI" character varying(80) NOT NULL,
    "_TOP_LEVEL_AURI" character varying(80),
    "PART" integer NOT NULL
);


ALTER TABLE odk._form_info_xform_ref OWNER TO odk;

--
-- Name: _form_service_cursor_2; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._form_service_cursor_2 (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "URI_MD5_FORM_ID" character varying(80) NOT NULL,
    "AURI_SERVICE" character varying(80) NOT NULL,
    "EXT_SERVICE_TYPE" character varying(200) NOT NULL,
    "EXTERNAL_SERVICE_OPTION" character varying(80) NOT NULL,
    "IS_EXTERNAL_SERVICE_PREPARED" boolean,
    "OPERATIONAL_STATUS" character varying(80),
    "RETRY_STATUS" character varying(80),
    "ESTABLISHMENT_DATETIME" timestamp without time zone NOT NULL,
    "UPLOAD_COMPLETED" boolean,
    "LAST_UPLOAD_PERSISTENCE_CURSOR" timestamp without time zone,
    "LAST_UPLOAD_KEY" character varying(4096),
    "LAST_STREAMING_PERSISTENCE_CURSOR" timestamp without time zone,
    "LAST_STREAMING_KEY" character varying(4096),
    "FORM_ID" character varying(4096)
);


ALTER TABLE odk._form_service_cursor_2 OWNER TO odk;

--
-- Name: _granted_authority_hierarchy; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._granted_authority_hierarchy (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "DOMINATING_GRANTED_AUTHORITY" character varying(80) NOT NULL,
    "SUBORDINATE_GRANTED_AUTHORITY" character varying(80) NOT NULL
);


ALTER TABLE odk._granted_authority_hierarchy OWNER TO odk;

--
-- Name: _json_server3; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._json_server3 (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "AUTH_KEY" character varying(4096),
    "OWNER_EMAIL" character varying(4096),
    "SERVER_URL" character varying(4096),
    "BINARY_OPTION" character varying(4096)
);


ALTER TABLE odk._json_server3 OWNER TO odk;

--
-- Name: _misc_tasks; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._misc_tasks (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "FORM_ID" character varying(249),
    "REQUESTING_USER" character varying(255),
    "REQUEST_DATE" timestamp without time zone,
    "REQUEST_PARAMETERS" character varying(8192),
    "LAST_ACTIVITY_DATE" timestamp without time zone,
    "ATTEMPT_COUNT" integer,
    "STATUS" character varying(255),
    "TASK_TYPE" character varying(255),
    "COMPLETION_DATE" timestamp without time zone
);


ALTER TABLE odk._misc_tasks OWNER TO odk;

--
-- Name: _persistent_result_file_bin; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._persistent_result_file_bin (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "_PARENT_AURI" character varying(80),
    "_ORDINAL_NUMBER" integer NOT NULL,
    "_TOP_LEVEL_AURI" character varying(80),
    "UNROOTED_FILE_PATH" character varying(4096),
    "CONTENT_TYPE" character varying(80),
    "CONTENT_LENGTH" integer,
    "CONTENT_HASH" character varying(255)
);


ALTER TABLE odk._persistent_result_file_bin OWNER TO odk;

--
-- Name: _persistent_result_file_blb; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._persistent_result_file_blb (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "_TOP_LEVEL_AURI" character varying(80),
    "VALUE" bytea NOT NULL
);


ALTER TABLE odk._persistent_result_file_blb OWNER TO odk;

--
-- Name: _persistent_result_file_ref; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._persistent_result_file_ref (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "_DOM_AURI" character varying(80) NOT NULL,
    "_SUB_AURI" character varying(80) NOT NULL,
    "_TOP_LEVEL_AURI" character varying(80),
    "PART" integer NOT NULL
);


ALTER TABLE odk._persistent_result_file_ref OWNER TO odk;

--
-- Name: _persistent_results; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._persistent_results (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "REQUESTING_USER" character varying(255),
    "REQUEST_DATE" timestamp without time zone,
    "REQUEST_PARAMETERS" character varying(8192),
    "LAST_RETRY_DATE" timestamp without time zone,
    "ATTEMPT_COUNT" integer,
    "STATUS" character varying(255),
    "RESULT_TYPE" character varying(255),
    "COMPLETION_DATE" timestamp without time zone,
    "FORM_ID_KEY" character varying(249),
    "URI_FILTER_GROUP" character varying(80)
);


ALTER TABLE odk._persistent_results OWNER TO odk;

--
-- Name: _registered_users; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._registered_users (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "LOCAL_USERNAME" character varying(80),
    "OPENID_EMAIL" character varying(80),
    "FULL_NAME" character varying(255),
    "BASIC_AUTH_PASSWORD" character varying(255),
    "BASIC_AUTH_SALT" character varying(8),
    "DIGEST_AUTH_PASSWORD" character varying(255),
    "IS_REMOVED" boolean NOT NULL
);


ALTER TABLE odk._registered_users OWNER TO odk;

--
-- Name: _security_revisions; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._security_revisions (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "LAST_REVISION" timestamp without time zone
);


ALTER TABLE odk._security_revisions OWNER TO odk;

--
-- Name: _server_preferences_properties; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._server_preferences_properties (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "KEY" character varying(128),
    "VALUE" character varying(20480)
);


ALTER TABLE odk._server_preferences_properties OWNER TO odk;

--
-- Name: _task_lock; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._task_lock (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "FORM_ID" character varying(4096) NOT NULL,
    "TASK_TYPE" character varying(80) NOT NULL,
    "EXPIRATION_DATETIME" timestamp without time zone
);


ALTER TABLE odk._task_lock OWNER TO odk;

--
-- Name: _user_granted_authority; Type: TABLE; Schema: odk; Owner: odk
--

CREATE TABLE odk._user_granted_authority (
    "_URI" character varying(80) NOT NULL,
    "_CREATOR_URI_USER" character varying(80) NOT NULL,
    "_CREATION_DATE" timestamp without time zone NOT NULL,
    "_LAST_UPDATE_URI_USER" character varying(80),
    "_LAST_UPDATE_DATE" timestamp without time zone NOT NULL,
    "USER" character varying(80) NOT NULL,
    "GRANTED_AUTHORITY" character varying(80) NOT NULL
);


ALTER TABLE odk._user_granted_authority OWNER TO odk;

--
-- Data for Name: TRACE_ODK_DHIS2_DATA_COLLECTION_CORE; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk."TRACE_ODK_DHIS2_DATA_COLLECTION_CORE" ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "_MODEL_VERSION", "_UI_VERSION", "_IS_COMPLETE", "_SUBMISSION_DATE", "_MARKED_AS_COMPLETE_DATE", "P_HIV_STATUS_HIV_STATUS", "PATIENT_RESIDENCE_DATA_PATIENT_NATIONALITY", "PATIENT_RESIDENCE_DATA_SUBURB", "PATIENT_RESIDENCE_DATA_OTHER_NATIONALITY", "META_INSTANCE_ID", "P_HIV_STATUS_RTRI_RESULT", "PATIENT_DATA_SEX", "TEST_DETAILS_SUBMISSION_DATE_RAW", "PATIENT_DATA_ID_NUMBER", "PATIENT_DATA_SURNAME", "PATIENT_RESIDENCE_DATA_TOWN", "HEALTHCARE_WORKER_HCWORKERFIRSTNAME", "FACILITY_DATA_FACILITY_ID", "TEST_DETAILS_SUBMISSION_DATE", "HEALTHCARE_WORKER_HCWORKERDESIGNATION", "FACILITY_DATA_FACILITY_NAME", "TEST_DETAILS_RTRI_TESTDATE_RAW", "PATIENT_DATA_FIRSTNAME", "PATIENT_RESIDENCE_DATA_OTHER_PROVINCE", "PATIENT_DATA_MIDDLENAME", "PATIENT_DATA_HEALTH_ID", "TEST_DETAILS_RTRI_TESTDATE", "PATIENT_DATA_AGE", "PATIENT_RESIDENCE_DATA_PROVINCE", "HEALTHCARE_WORKER_HCWORKERSURNAME") FROM stdin;
\.


--
-- Data for Name: _backend_actions; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._backend_actions ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "LAST_REVISION") FROM stdin;
rid:watchdog_start	aggregate.opendatakit.org:web-service	2020-03-25 08:13:38.193	aggregate.opendatakit.org:web-service	2020-03-25 08:13:38.2	2020-03-25 08:13:38.2
rid:watchdog_enqueue	aggregate.opendatakit.org:web-service	2020-03-25 08:14:46.638	aggregate.opendatakit.org:web-service	2020-03-25 08:14:46.643	2020-03-25 08:14:46.634
rid:watchdog_scheduling	aggregate.opendatakit.org:web-service	2020-03-25 08:14:46.641	aggregate.opendatakit.org:web-service	2020-03-25 08:14:52.023	2020-03-25 08:29:46.634
\.


--
-- Data for Name: _form_data_model; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._form_data_model ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "URI_SUBMISSION_DATA_MODEL", "PARENT_URI_FORM_DATA_MODEL", "ORDINAL_NUMBER", "ELEMENT_TYPE", "ELEMENT_NAME", "PERSIST_AS_COLUMN_NAME", "PERSIST_AS_TABLE_NAME", "PERSIST_AS_SCHEMA_NAME") FROM stdin;
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000001)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.126	\N	2020-03-25 08:17:15.126	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	1	GROUP	data	\N	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000002)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.128	\N	2020-03-25 08:17:15.128	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000001)	1	GROUP	meta	\N	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000003)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.128	\N	2020-03-25 08:17:15.128	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000002)	1	STRING	instanceID	META_INSTANCE_ID	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000004)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.128	\N	2020-03-25 08:17:15.128	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000001)	2	GROUP	PatientData	\N	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000005)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.128	\N	2020-03-25 08:17:15.128	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000004)	1	STRING	firstname	PATIENT_DATA_FIRSTNAME	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000006)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.128	\N	2020-03-25 08:17:15.128	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000004)	2	STRING	middlename	PATIENT_DATA_MIDDLENAME	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000007)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.128	\N	2020-03-25 08:17:15.128	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000004)	3	STRING	surname	PATIENT_DATA_SURNAME	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000008)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.129	\N	2020-03-25 08:17:15.129	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000004)	4	DECIMAL	id_number	PATIENT_DATA_ID_NUMBER	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000009)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.129	\N	2020-03-25 08:17:15.129	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000004)	5	INTEGER	age	PATIENT_DATA_AGE	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000010)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.129	\N	2020-03-25 08:17:15.129	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000004)	6	STRING	sex	PATIENT_DATA_SEX	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000011)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.129	\N	2020-03-25 08:17:15.129	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000004)	7	STRING	health_id	PATIENT_DATA_HEALTH_ID	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000012)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.129	\N	2020-03-25 08:17:15.129	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000001)	3	GROUP	patient_residence_data	\N	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000013)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.13	\N	2020-03-25 08:17:15.13	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000012)	1	STRING	patient_nationality	PATIENT_RESIDENCE_DATA_PATIENT_NATIONALITY	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000014)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.13	\N	2020-03-25 08:17:15.13	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000012)	2	STRING	other_nationality	PATIENT_RESIDENCE_DATA_OTHER_NATIONALITY	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000015)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.13	\N	2020-03-25 08:17:15.13	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000012)	3	STRING	province	PATIENT_RESIDENCE_DATA_PROVINCE	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000016)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.13	\N	2020-03-25 08:17:15.13	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000012)	4	STRING	other_province	PATIENT_RESIDENCE_DATA_OTHER_PROVINCE	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000017)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.131	\N	2020-03-25 08:17:15.131	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000012)	5	STRING	town	PATIENT_RESIDENCE_DATA_TOWN	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000018)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.132	\N	2020-03-25 08:17:15.132	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000012)	6	STRING	suburb	PATIENT_RESIDENCE_DATA_SUBURB	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000019)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.133	\N	2020-03-25 08:17:15.133	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000001)	4	GROUP	p_hiv_status	\N	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000020)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.133	\N	2020-03-25 08:17:15.133	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000019)	1	STRING	hiv_status	P_HIV_STATUS_HIV_STATUS	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000021)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.133	\N	2020-03-25 08:17:15.133	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000019)	2	STRING	rtri_result	P_HIV_STATUS_RTRI_RESULT	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000022)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.134	\N	2020-03-25 08:17:15.134	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000001)	5	GROUP	facility_data	\N	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000023)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.135	\N	2020-03-25 08:17:15.135	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000022)	1	STRING	facility_name	FACILITY_DATA_FACILITY_NAME	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000024)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.136	\N	2020-03-25 08:17:15.136	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000022)	2	STRING	facility_id	FACILITY_DATA_FACILITY_ID	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000025)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.136	\N	2020-03-25 08:17:15.136	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000001)	6	GROUP	healthcare_worker	\N	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000026)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.136	\N	2020-03-25 08:17:15.136	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000025)	1	STRING	hcworkerfirstname	HEALTHCARE_WORKER_HCWORKERFIRSTNAME	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000027)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.136	\N	2020-03-25 08:17:15.136	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000025)	2	STRING	hcworkersurname	HEALTHCARE_WORKER_HCWORKERSURNAME	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000028)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.136	\N	2020-03-25 08:17:15.136	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000025)	3	STRING	hcworkerdesignation	HEALTHCARE_WORKER_HCWORKERDESIGNATION	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000029)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.136	\N	2020-03-25 08:17:15.136	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000001)	7	GROUP	test_details	\N	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000030)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.136	\N	2020-03-25 08:17:15.136	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000029)	1	JRDATE	rtri_testdate	\N	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000030-temporal_parsed)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.137	\N	2020-03-25 08:17:15.137	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000030)	1	JRDATE	rtri_testdate	TEST_DETAILS_RTRI_TESTDATE	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000030-temporal_raw)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.137	\N	2020-03-25 08:17:15.137	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000030)	2	STRING	rtri_testdate	TEST_DETAILS_RTRI_TESTDATE_RAW	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000031)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.137	\N	2020-03-25 08:17:15.137	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000029)	2	JRDATE	submission_date	\N	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000031-temporal_parsed)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.137	\N	2020-03-25 08:17:15.137	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000031)	1	JRDATE	submission_date	TEST_DETAILS_SUBMISSION_DATE	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000031-temporal_raw)	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.137	\N	2020-03-25 08:17:15.137	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2	elem+uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2(00000031)	2	STRING	submission_date	TEST_DETAILS_SUBMISSION_DATE_RAW	TRACE_ODK_DHIS2_DATA_COLLECTION_CORE	odk
\.


--
-- Data for Name: _form_info; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._form_info ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "_MODEL_VERSION", "_UI_VERSION", "_IS_COMPLETE", "_SUBMISSION_DATE", "_MARKED_AS_COMPLETE_DATE", "FORM_ID") FROM stdin;
md5:8066dbca4385ac55dce36096888514c7	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:14.688	\N	2020-03-25 08:17:14.688	1	0	t	2020-03-25 08:17:14.688	2020-03-25 08:17:14.688	TRACE-ODK-DHIS2-Data-Collection
\.


--
-- Data for Name: _form_info_fileset; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._form_info_fileset ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "_PARENT_AURI", "_ORDINAL_NUMBER", "_TOP_LEVEL_AURI", "ROOT_ELEMENT_MODEL_VERSION", "IS_ENCRYPTED_FORM", "IS_DOWNLOAD_ALLOWED", "LANGUAGE_CODE", "FORM_NAME", "DESCRIPTION", "DESCRIPTION_URL") FROM stdin;
uuid:93f0cf2a-2635-4726-ac45-bdca186e700b	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:14.959	\N	2020-03-25 08:17:14.959	md5:8066dbca4385ac55dce36096888514c7	1	md5:8066dbca4385ac55dce36096888514c7	\N	f	t	\N	TRACE-ODK-DHIS2 Data Collection	\N	\N
\.


--
-- Data for Name: _form_info_manifest_bin; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._form_info_manifest_bin ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "_PARENT_AURI", "_ORDINAL_NUMBER", "_TOP_LEVEL_AURI", "UNROOTED_FILE_PATH", "CONTENT_TYPE", "CONTENT_LENGTH", "CONTENT_HASH") FROM stdin;
\.


--
-- Data for Name: _form_info_manifest_blb; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._form_info_manifest_blb ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "_TOP_LEVEL_AURI", "VALUE") FROM stdin;
\.


--
-- Data for Name: _form_info_manifest_ref; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._form_info_manifest_ref ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "_DOM_AURI", "_SUB_AURI", "_TOP_LEVEL_AURI", "PART") FROM stdin;
\.


--
-- Data for Name: _form_info_submission_association; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._form_info_submission_association ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "URI_MD5_SUBMISSION_FORM_ID", "URI_MD5_FORM_ID", "SUBMISSION_FORM_ID", "IS_PERSISTENCE_MODEL_COMPLETE", "IS_SUBMISSION_ALLOWED", "URI_SUBMISSION_DATA_MODEL") FROM stdin;
uuid:a000e09a-6135-4dfe-9ae1-d11ca564a74f	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.083	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.325	md5:8066dbca4385ac55dce36096888514c7	md5:8066dbca4385ac55dce36096888514c7	TRACE-ODK-DHIS2-Data-Collection	t	t	uuid:5502377e-8a7b-40dd-9613-d9cb6355a3c2
\.


--
-- Data for Name: _form_info_xform_bin; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._form_info_xform_bin ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "_PARENT_AURI", "_ORDINAL_NUMBER", "_TOP_LEVEL_AURI", "UNROOTED_FILE_PATH", "CONTENT_TYPE", "CONTENT_LENGTH", "CONTENT_HASH") FROM stdin;
uuid:85d73c99-5478-4a31-ac04-772076bfd062	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.037	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.078	uuid:93f0cf2a-2635-4726-ac45-bdca186e700b	1	md5:8066dbca4385ac55dce36096888514c7	\N	text/xml	16604	md5:b3f32266cfd46922ae38d1957fffed56
\.


--
-- Data for Name: _form_info_xform_blb; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._form_info_xform_blb ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "_TOP_LEVEL_AURI", "VALUE") FROM stdin;
uuid:d0312398-a619-4a0b-a484-1aa7f348e49b	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.045	\N	2020-03-25 08:17:15.045	md5:8066dbca4385ac55dce36096888514c7	\\x3c683a68746d6c20786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030322f78666f726d732220786d6c6e733a683d22687474703a2f2f7777772e77332e6f72672f313939392f7868746d6c2220786d6c6e733a7873643d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d612220786d6c6e733a6a723d22687474703a2f2f6f70656e726f73612e6f72672f6a617661726f7361223e0d0a20203c683a686561643e3c212d2d204f444b204167677265676174652075706c6f61642074696d653a20323032302d30332d32355430383a31373a31352e3032393237355a206f6e20687474703a2f2f6c6f63616c686f73743a383038302f4f444b416767726567617465202d2d3e0d0a202020203c683a7469746c653e54524143452d4f444b2d4448495332204461746120436f6c6c656374696f6e3c2f683a7469746c653e0d0a202020203c6d6f64656c3e0d0a2020202020203c696e7374616e63653e0d0a20202020202020203c646174612069643d2254524143452d4f444b2d44484953322d446174612d436f6c6c656374696f6e223e0d0a202020202020202020203c6d6574613e0d0a2020202020202020202020203c696e7374616e636549442f3e0d0a202020202020202020203c2f6d6574613e0d0a202020202020202020203c50617469656e74446174613e0d0a2020202020202020202020203c66697273746e616d652f3e0d0a2020202020202020202020203c6d6964646c656e616d652f3e0d0a2020202020202020202020203c7375726e616d652f3e0d0a2020202020202020202020203c69645f6e756d6265722f3e0d0a2020202020202020202020203c6167652f3e0d0a2020202020202020202020203c7365782f3e0d0a2020202020202020202020203c6865616c74685f69642f3e0d0a202020202020202020203c2f50617469656e74446174613e0d0a202020202020202020203c70617469656e745f7265736964656e63655f646174613e0d0a2020202020202020202020203c70617469656e745f6e6174696f6e616c6974792f3e0d0a2020202020202020202020203c6f746865725f6e6174696f6e616c6974792f3e0d0a2020202020202020202020203c70726f76696e63652f3e0d0a2020202020202020202020203c6f746865725f70726f76696e63652f3e0d0a2020202020202020202020203c746f776e2f3e0d0a2020202020202020202020203c7375627572622f3e0d0a202020202020202020203c2f70617469656e745f7265736964656e63655f646174613e0d0a202020202020202020203c705f6869765f7374617475733e0d0a2020202020202020202020203c6869765f7374617475732f3e0d0a2020202020202020202020203c727472695f726573756c742f3e0d0a202020202020202020203c2f705f6869765f7374617475733e0d0a202020202020202020203c666163696c6974795f646174613e0d0a2020202020202020202020203c666163696c6974795f6e616d652f3e0d0a2020202020202020202020203c666163696c6974795f69642f3e0d0a202020202020202020203c2f666163696c6974795f646174613e0d0a202020202020202020203c6865616c7468636172655f776f726b65723e0d0a2020202020202020202020203c6863776f726b657266697273746e616d652f3e0d0a2020202020202020202020203c6863776f726b65727375726e616d652f3e0d0a2020202020202020202020203c6863776f726b657264657369676e6174696f6e2f3e0d0a202020202020202020203c2f6865616c7468636172655f776f726b65723e0d0a202020202020202020203c746573745f64657461696c733e0d0a2020202020202020202020203c727472695f74657374646174652f3e0d0a2020202020202020202020203c7375626d697373696f6e5f646174652f3e0d0a202020202020202020203c2f746573745f64657461696c733e0d0a20202020202020203c2f646174613e0d0a2020202020203c2f696e7374616e63653e0d0a2020202020203c69746578743e0d0a20202020202020203c7472616e736c6174696f6e206c616e673d22456e676c697368223e0d0a202020202020202020203c746578742069643d222f646174612f50617469656e74446174613a6c6162656c223e0d0a2020202020202020202020203c76616c75653e50617469656e7420446174613a2053656374696f6e20313c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f50617469656e74446174612f66697273746e616d653a6c6162656c223e0d0a2020202020202020202020203c76616c75653e456e746572204669727374204e616d653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f50617469656e74446174612f6d6964646c656e616d653a6c6162656c223e0d0a2020202020202020202020203c76616c75653e456e746572204d6964646c65204e616d653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f50617469656e74446174612f7375726e616d653a6c6162656c223e0d0a2020202020202020202020203c76616c75653e456e746572205375726e616d653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f50617469656e74446174612f69645f6e756d6265723a6c6162656c223e0d0a2020202020202020202020203c76616c75653e456e746572204944204e756d6265723c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f50617469656e74446174612f6167653a6c6162656c223e0d0a2020202020202020202020203c76616c75653e456e746572204167653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f50617469656e74446174612f7365783a6c6162656c223e0d0a2020202020202020202020203c76616c75653e53656c656374205365783c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f50617469656e74446174612f7365783a6f7074696f6e30223e0d0a2020202020202020202020203c76616c75653e4d616c653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f50617469656e74446174612f7365783a6f7074696f6e31223e0d0a2020202020202020202020203c76616c75653e46656d616c653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f50617469656e74446174612f6865616c74685f69643a6c6162656c223e0d0a2020202020202020202020203c76616c75653e456e746572204865616c74682049443c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174613a6c6162656c223e0d0a2020202020202020202020203c76616c75653e50617469656e74205265736964656e636520446174613a2053656374696f6e20323c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f70617469656e745f6e6174696f6e616c6974793a6c6162656c223e0d0a2020202020202020202020203c76616c75653e53656c6563742050617469656e74204e6174696f6e616c6974793c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f70617469656e745f6e6174696f6e616c6974793a6f7074696f6e30223e0d0a2020202020202020202020203c76616c75653e536f757468204166726963616e3c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f70617469656e745f6e6174696f6e616c6974793a6f7074696f6e31223e0d0a2020202020202020202020203c76616c75653e4f746865723c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f6f746865725f6e6174696f6e616c6974793a6c6162656c223e0d0a2020202020202020202020203c76616c75653e4966204f746865722069732073656c65637465642c20656e74657220796f7572206e6174696f6e616c6974792e3c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6c6162656c223e0d0a2020202020202020202020203c76616c75653e53656c6563742050617469656e742050726f76696e63653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e30223e0d0a2020202020202020202020203c76616c75653e4561737465726e20436170653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e31223e0d0a2020202020202020202020203c76616c75653e467265652053746174653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e32223e0d0a2020202020202020202020203c76616c75653e47617574656e673c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e33223e0d0a2020202020202020202020203c76616c75653e4b77612d5a756c75204e6174616c3c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e34223e0d0a2020202020202020202020203c76616c75653e4c696d706f706f3c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e35223e0d0a2020202020202020202020203c76616c75653e4d70756d616c616e67613c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e36223e0d0a2020202020202020202020203c76616c75653e4e6f72746865726e20436170653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e37223e0d0a2020202020202020202020203c76616c75653e4e6f72746820576573743c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e38223e0d0a2020202020202020202020203c76616c75653e5765737465726e20436170653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e39223e0d0a2020202020202020202020203c76616c75653e4f746865723c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f6f746865725f70726f76696e63653a6c6162656c223e0d0a2020202020202020202020203c76616c75653e4966204f746865722069732073656c65637465642c20656e74657220796f75722070726f76696e63652e3c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f746f776e3a6c6162656c223e0d0a2020202020202020202020203c76616c75653e456e7465722050617469656e7420546f776e3c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f70617469656e745f7265736964656e63655f646174612f7375627572623a6c6162656c223e0d0a2020202020202020202020203c76616c75653e456e7465722050617469656e74205375627572623c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f705f6869765f7374617475733a6c6162656c223e0d0a2020202020202020202020203c76616c75653e50617469656e7420484956205374617475733a2053656374696f6e20333c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f705f6869765f7374617475732f6869765f7374617475733a6c6162656c223e0d0a2020202020202020202020203c76616c75653e484956205374617475733c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f705f6869765f7374617475732f6869765f7374617475733a6f7074696f6e30223e0d0a2020202020202020202020203c76616c75653e4e656761746976653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f705f6869765f7374617475732f6869765f7374617475733a6f7074696f6e31223e0d0a2020202020202020202020203c76616c75653e506f7369746976653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f705f6869765f7374617475732f727472695f726573756c743a6c6162656c223e0d0a2020202020202020202020203c76616c75653e5254524920526573756c743c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f705f6869765f7374617475732f727472695f726573756c743a6f7074696f6e30223e0d0a2020202020202020202020203c76616c75653e526563656e743c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f705f6869765f7374617475732f727472695f726573756c743a6f7074696f6e31223e0d0a2020202020202020202020203c76616c75653e4c6f6e672d5465726d3c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f705f6869765f7374617475732f727472695f726573756c743a6f7074696f6e32223e0d0a2020202020202020202020203c76616c75653e496e636f6e636c75736976653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f666163696c6974795f646174613a6c6162656c223e0d0a2020202020202020202020203c76616c75653e466163696c69747920446174613a2053656374696f6e20343c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f666163696c6974795f646174612f666163696c6974795f6e616d653a6c6162656c223e0d0a2020202020202020202020203c76616c75653e466163696c697479204e616d653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f666163696c6974795f646174612f666163696c6974795f69643a6c6162656c223e0d0a2020202020202020202020203c76616c75653e466163696c6974792049443c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f6865616c7468636172655f776f726b65723a6c6162656c223e0d0a2020202020202020202020203c76616c75653e4865616c7468204361726520576f726b65722044657461696c733a2053656374696f6e20353c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f6865616c7468636172655f776f726b65722f6863776f726b657266697273746e616d653a6c6162656c223e0d0a2020202020202020202020203c76616c75653e4669727374204e616d653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f6865616c7468636172655f776f726b65722f6863776f726b65727375726e616d653a6c6162656c223e0d0a2020202020202020202020203c76616c75653e5375726e616d653c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f6865616c7468636172655f776f726b65722f6863776f726b657264657369676e6174696f6e3a6c6162656c223e0d0a2020202020202020202020203c76616c75653e44657369676e6174696f6e3c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f746573745f64657461696c733a6c6162656c223e0d0a2020202020202020202020203c76616c75653e546573742044657461696c733a2053656374696f6e20363c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f746573745f64657461696c732f727472695f74657374646174653a6c6162656c223e0d0a2020202020202020202020203c76616c75653e44617465206f66205254524920546573743c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a202020202020202020203c746578742069643d222f646174612f746573745f64657461696c732f7375626d697373696f6e5f646174653a6c6162656c223e0d0a2020202020202020202020203c76616c75653e44617465204f66205375626d697373696f6e3c2f76616c75653e0d0a202020202020202020203c2f746578743e0d0a20202020202020203c2f7472616e736c6174696f6e3e0d0a2020202020203c2f69746578743e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f6d6574612f696e7374616e636549442220747970653d22737472696e672220726561646f6e6c793d22747275652829222063616c63756c6174653d22636f6e6361742827757569643a272c2075756964282929222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f50617469656e74446174612f66697273746e616d652220747970653d22737472696e67222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f50617469656e74446174612f6d6964646c656e616d652220747970653d22737472696e67222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f50617469656e74446174612f7375726e616d652220747970653d22737472696e67222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f50617469656e74446174612f69645f6e756d6265722220747970653d22646563696d616c222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f50617469656e74446174612f6167652220747970653d22696e74222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f50617469656e74446174612f7365782220747970653d2273656c65637431222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f50617469656e74446174612f6865616c74685f69642220747970653d22737472696e67222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f70617469656e745f7265736964656e63655f646174612f70617469656e745f6e6174696f6e616c6974792220747970653d2273656c65637431222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f70617469656e745f7265736964656e63655f646174612f6f746865725f6e6174696f6e616c6974792220747970653d22737472696e67222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63652220747970653d2273656c65637431222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f70617469656e745f7265736964656e63655f646174612f6f746865725f70726f76696e63652220747970653d22737472696e67222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f70617469656e745f7265736964656e63655f646174612f746f776e2220747970653d22737472696e67222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f70617469656e745f7265736964656e63655f646174612f7375627572622220747970653d22737472696e67222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f705f6869765f7374617475732f6869765f7374617475732220747970653d2273656c65637431222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f705f6869765f7374617475732f727472695f726573756c742220747970653d2273656c65637431222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f666163696c6974795f646174612f666163696c6974795f6e616d652220747970653d22737472696e67222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f666163696c6974795f646174612f666163696c6974795f69642220747970653d22737472696e67222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f6865616c7468636172655f776f726b65722f6863776f726b657266697273746e616d652220747970653d22737472696e67222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f6865616c7468636172655f776f726b65722f6863776f726b65727375726e616d652220747970653d22737472696e67222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f6865616c7468636172655f776f726b65722f6863776f726b657264657369676e6174696f6e2220747970653d22737472696e67222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f746573745f64657461696c732f727472695f74657374646174652220747970653d2264617465222072657175697265643d22747275652829222f3e0d0a2020202020203c62696e64206e6f64657365743d222f646174612f746573745f64657461696c732f7375626d697373696f6e5f646174652220747970653d2264617465222072657175697265643d22747275652829222f3e0d0a202020203c2f6d6f64656c3e0d0a20203c2f683a686561643e0d0a20203c683a626f64793e0d0a202020203c67726f7570207265663d222f646174612f50617469656e74446174612220617070656172616e63653d226669656c642d6c697374223e0d0a2020202020203c6c6162656c207265663d226a723a697465787428272f646174612f50617469656e74446174613a6c6162656c2729222f3e0d0a2020202020203c696e707574207265663d222f646174612f50617469656e74446174612f66697273746e616d65223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f50617469656e74446174612f66697273746e616d653a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a2020202020203c696e707574207265663d222f646174612f50617469656e74446174612f6d6964646c656e616d65223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f50617469656e74446174612f6d6964646c656e616d653a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a2020202020203c696e707574207265663d222f646174612f50617469656e74446174612f7375726e616d65223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f50617469656e74446174612f7375726e616d653a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a2020202020203c696e707574207265663d222f646174612f50617469656e74446174612f69645f6e756d626572223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f50617469656e74446174612f69645f6e756d6265723a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a2020202020203c696e707574207265663d222f646174612f50617469656e74446174612f616765223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f50617469656e74446174612f6167653a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a2020202020203c73656c65637431207265663d222f646174612f50617469656e74446174612f736578223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f50617469656e74446174612f7365783a6c6162656c2729222f3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f50617469656e74446174612f7365783a6f7074696f6e302729222f3e0d0a202020202020202020203c76616c75653e6d616c653c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f50617469656e74446174612f7365783a6f7074696f6e312729222f3e0d0a202020202020202020203c76616c75653e66656d616c653c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a2020202020203c2f73656c656374313e0d0a2020202020203c696e707574207265663d222f646174612f50617469656e74446174612f6865616c74685f6964223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f50617469656e74446174612f6865616c74685f69643a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a202020203c2f67726f75703e0d0a202020203c67726f7570207265663d222f646174612f70617469656e745f7265736964656e63655f646174612220617070656172616e63653d226669656c642d6c697374223e0d0a2020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174613a6c6162656c2729222f3e0d0a2020202020203c73656c65637431207265663d222f646174612f70617469656e745f7265736964656e63655f646174612f70617469656e745f6e6174696f6e616c697479223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f70617469656e745f6e6174696f6e616c6974793a6c6162656c2729222f3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f70617469656e745f6e6174696f6e616c6974793a6f7074696f6e302729222f3e0d0a202020202020202020203c76616c75653e736f7574685f6166726963616e3c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f70617469656e745f6e6174696f6e616c6974793a6f7074696f6e312729222f3e0d0a202020202020202020203c76616c75653e6f746865723c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a2020202020203c2f73656c656374313e0d0a2020202020203c696e707574207265663d222f646174612f70617469656e745f7265736964656e63655f646174612f6f746865725f6e6174696f6e616c697479223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f6f746865725f6e6174696f6e616c6974793a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a2020202020203c73656c65637431207265663d222f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63652220617070656172616e63653d226d696e696d616c223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6c6162656c2729222f3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e302729222f3e0d0a202020202020202020203c76616c75653e6561737465726e5f636170653c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e312729222f3e0d0a202020202020202020203c76616c75653e667265655f73746174653c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e322729222f3e0d0a202020202020202020203c76616c75653e67617574656e673c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e332729222f3e0d0a202020202020202020203c76616c75653e7a756c755f6e6174616c3c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e342729222f3e0d0a202020202020202020203c76616c75653e6c696d706f706f3c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e352729222f3e0d0a202020202020202020203c76616c75653e6d70756d616c616e67613c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e362729222f3e0d0a202020202020202020203c76616c75653e6e6f746865726e5f636170653c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e372729222f3e0d0a202020202020202020203c76616c75653e6e6f7274685f776573743c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e382729222f3e0d0a202020202020202020203c76616c75653e7765737465726e5f636170653c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f70726f76696e63653a6f7074696f6e392729222f3e0d0a202020202020202020203c76616c75653e6f746865723c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a2020202020203c2f73656c656374313e0d0a2020202020203c696e707574207265663d222f646174612f70617469656e745f7265736964656e63655f646174612f6f746865725f70726f76696e6365223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f6f746865725f70726f76696e63653a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a2020202020203c696e707574207265663d222f646174612f70617469656e745f7265736964656e63655f646174612f746f776e223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f746f776e3a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a2020202020203c696e707574207265663d222f646174612f70617469656e745f7265736964656e63655f646174612f737562757262223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f70617469656e745f7265736964656e63655f646174612f7375627572623a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a202020203c2f67726f75703e0d0a202020203c67726f7570207265663d222f646174612f705f6869765f7374617475732220617070656172616e63653d226669656c642d6c697374223e0d0a2020202020203c6c6162656c207265663d226a723a697465787428272f646174612f705f6869765f7374617475733a6c6162656c2729222f3e0d0a2020202020203c73656c65637431207265663d222f646174612f705f6869765f7374617475732f6869765f737461747573223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f705f6869765f7374617475732f6869765f7374617475733a6c6162656c2729222f3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f705f6869765f7374617475732f6869765f7374617475733a6f7074696f6e302729222f3e0d0a202020202020202020203c76616c75653e6e656761746976653c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f705f6869765f7374617475732f6869765f7374617475733a6f7074696f6e312729222f3e0d0a202020202020202020203c76616c75653e706f7369746976653c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a2020202020203c2f73656c656374313e0d0a2020202020203c73656c65637431207265663d222f646174612f705f6869765f7374617475732f727472695f726573756c742220617070656172616e63653d226d696e696d616c223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f705f6869765f7374617475732f727472695f726573756c743a6c6162656c2729222f3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f705f6869765f7374617475732f727472695f726573756c743a6f7074696f6e302729222f3e0d0a202020202020202020203c76616c75653e726563656e743c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f705f6869765f7374617475732f727472695f726573756c743a6f7074696f6e312729222f3e0d0a202020202020202020203c76616c75653e6c6f6e675f7465726d3c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a20202020202020203c6974656d3e0d0a202020202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f705f6869765f7374617475732f727472695f726573756c743a6f7074696f6e322729222f3e0d0a202020202020202020203c76616c75653e696e636f6e636c75736976653c2f76616c75653e0d0a20202020202020203c2f6974656d3e0d0a2020202020203c2f73656c656374313e0d0a202020203c2f67726f75703e0d0a202020203c67726f7570207265663d222f646174612f666163696c6974795f646174612220617070656172616e63653d226669656c642d6c697374223e0d0a2020202020203c6c6162656c207265663d226a723a697465787428272f646174612f666163696c6974795f646174613a6c6162656c2729222f3e0d0a2020202020203c696e707574207265663d222f646174612f666163696c6974795f646174612f666163696c6974795f6e616d65223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f666163696c6974795f646174612f666163696c6974795f6e616d653a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a2020202020203c696e707574207265663d222f646174612f666163696c6974795f646174612f666163696c6974795f6964223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f666163696c6974795f646174612f666163696c6974795f69643a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a202020203c2f67726f75703e0d0a202020203c67726f7570207265663d222f646174612f6865616c7468636172655f776f726b65722220617070656172616e63653d226669656c642d6c697374223e0d0a2020202020203c6c6162656c207265663d226a723a697465787428272f646174612f6865616c7468636172655f776f726b65723a6c6162656c2729222f3e0d0a2020202020203c696e707574207265663d222f646174612f6865616c7468636172655f776f726b65722f6863776f726b657266697273746e616d65223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f6865616c7468636172655f776f726b65722f6863776f726b657266697273746e616d653a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a2020202020203c696e707574207265663d222f646174612f6865616c7468636172655f776f726b65722f6863776f726b65727375726e616d65223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f6865616c7468636172655f776f726b65722f6863776f726b65727375726e616d653a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a2020202020203c696e707574207265663d222f646174612f6865616c7468636172655f776f726b65722f6863776f726b657264657369676e6174696f6e223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f6865616c7468636172655f776f726b65722f6863776f726b657264657369676e6174696f6e3a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a202020203c2f67726f75703e0d0a202020203c67726f7570207265663d222f646174612f746573745f64657461696c732220617070656172616e63653d226669656c642d6c697374223e0d0a2020202020203c6c6162656c207265663d226a723a697465787428272f646174612f746573745f64657461696c733a6c6162656c2729222f3e0d0a2020202020203c696e707574207265663d222f646174612f746573745f64657461696c732f727472695f7465737464617465223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f746573745f64657461696c732f727472695f74657374646174653a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a2020202020203c696e707574207265663d222f646174612f746573745f64657461696c732f7375626d697373696f6e5f64617465223e0d0a20202020202020203c6c6162656c207265663d226a723a697465787428272f646174612f746573745f64657461696c732f7375626d697373696f6e5f646174653a6c6162656c2729222f3e0d0a2020202020203c2f696e7075743e0d0a202020203c2f67726f75703e0d0a20203c2f683a626f64793e0d0a3c2f683a68746d6c3e0d0a
\.


--
-- Data for Name: _form_info_xform_ref; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._form_info_xform_ref ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "_DOM_AURI", "_SUB_AURI", "_TOP_LEVEL_AURI", "PART") FROM stdin;
uuid:a6ea53df-c22c-4ebd-a330-3e527d1d2fd7	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:15.045	\N	2020-03-25 08:17:15.045	uuid:85d73c99-5478-4a31-ac04-772076bfd062	uuid:d0312398-a619-4a0b-a484-1aa7f348e49b	md5:8066dbca4385ac55dce36096888514c7	1
\.


--
-- Data for Name: _form_service_cursor_2; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._form_service_cursor_2 ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "URI_MD5_FORM_ID", "AURI_SERVICE", "EXT_SERVICE_TYPE", "EXTERNAL_SERVICE_OPTION", "IS_EXTERNAL_SERVICE_PREPARED", "OPERATIONAL_STATUS", "RETRY_STATUS", "ESTABLISHMENT_DATETIME", "UPLOAD_COMPLETED", "LAST_UPLOAD_PERSISTENCE_CURSOR", "LAST_UPLOAD_KEY", "LAST_STREAMING_PERSISTENCE_CURSOR", "LAST_STREAMING_KEY", "FORM_ID") FROM stdin;
uuid:61fef64c-c4cf-4577-a664-3a8189b60391	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:59.848	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:59.855	md5:8066dbca4385ac55dce36096888514c7	uuid:6b04d635-76db-4c3a-b605-32a0b3afd657	JSON_SERVER	STREAM_ONLY	t	ACTIVE	\N	2020-03-25 08:17:59.848	f	\N	\N	\N	\N	TRACE-ODK-DHIS2-Data-Collection
\.


--
-- Data for Name: _granted_authority_hierarchy; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._granted_authority_hierarchy ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "DOMINATING_GRANTED_AUTHORITY", "SUBORDINATE_GRANTED_AUTHORITY") FROM stdin;
uuid:6810dd11-39ae-4886-8c19-79f97e90cf07	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.813	\N	2020-03-25 08:13:36.813	GROUP_SITE_ADMINS	GROUP_DATA_VIEWERS
uuid:aa85b6ab-a2d9-4343-9851-471239ae2156	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.813	\N	2020-03-25 08:13:36.813	GROUP_SITE_ADMINS	GROUP_FORM_MANAGERS
uuid:d90ade4b-daeb-416b-aab2-8e7c278e6347	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.813	\N	2020-03-25 08:13:36.813	GROUP_SITE_ADMINS	ROLE_SITE_ACCESS_ADMIN
uuid:ad05a45d-f1d0-4799-b6fd-762b5cac00e7	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.813	\N	2020-03-25 08:13:36.813	GROUP_SITE_ADMINS	ROLE_USER
uuid:d2b7fcc1-e1b9-42be-a6e7-daed336f4fb4	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.831	\N	2020-03-25 08:13:36.831	GROUP_FORM_MANAGERS	GROUP_DATA_VIEWERS
uuid:2793f780-7f2f-4b08-8f9c-0f4d5d9ec46e	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.831	\N	2020-03-25 08:13:36.831	GROUP_FORM_MANAGERS	ROLE_DATA_OWNER
uuid:09b812c1-ea5f-4c58-8a3a-444371d4f019	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.831	\N	2020-03-25 08:13:36.831	GROUP_FORM_MANAGERS	ROLE_USER
uuid:3fdb0116-ea81-4741-bb00-316120558f6f	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.844	\N	2020-03-25 08:13:36.844	GROUP_DATA_VIEWERS	ROLE_DATA_VIEWER
uuid:b294d1ee-3a6a-473b-b9a9-f2395c14f7de	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.844	\N	2020-03-25 08:13:36.844	GROUP_DATA_VIEWERS	ROLE_USER
uuid:1b9c43e4-3b2e-41cc-b5d2-fe7e8869e698	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.856	\N	2020-03-25 08:13:36.856	GROUP_DATA_COLLECTORS	ROLE_DATA_COLLECTOR
uuid:8ca354d7-fe75-428f-89c1-ae0ab1bac640	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.861	\N	2020-03-25 08:13:36.861	USER_IS_ANONYMOUS	GROUP_DATA_COLLECTORS
uuid:7b0b6993-9ebb-4e31-a02d-82f52b3162ec	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.861	\N	2020-03-25 08:13:36.861	USER_IS_ANONYMOUS	GROUP_FORM_MANAGERS
\.


--
-- Data for Name: _json_server3; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._json_server3 ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "AUTH_KEY", "OWNER_EMAIL", "SERVER_URL", "BINARY_OPTION") FROM stdin;
uuid:6b04d635-76db-4c3a-b605-32a0b3afd657	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:59.848	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:17:59.853		mailto:N/A	http://openhim-core:5001/dhis-import/odk	PROVIDE_LINKS
\.


--
-- Data for Name: _misc_tasks; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._misc_tasks ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "FORM_ID", "REQUESTING_USER", "REQUEST_DATE", "REQUEST_PARAMETERS", "LAST_ACTIVITY_DATE", "ATTEMPT_COUNT", "STATUS", "TASK_TYPE", "COMPLETION_DATE") FROM stdin;
\.


--
-- Data for Name: _persistent_result_file_bin; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._persistent_result_file_bin ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "_PARENT_AURI", "_ORDINAL_NUMBER", "_TOP_LEVEL_AURI", "UNROOTED_FILE_PATH", "CONTENT_TYPE", "CONTENT_LENGTH", "CONTENT_HASH") FROM stdin;
\.


--
-- Data for Name: _persistent_result_file_blb; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._persistent_result_file_blb ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "_TOP_LEVEL_AURI", "VALUE") FROM stdin;
\.


--
-- Data for Name: _persistent_result_file_ref; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._persistent_result_file_ref ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "_DOM_AURI", "_SUB_AURI", "_TOP_LEVEL_AURI", "PART") FROM stdin;
\.


--
-- Data for Name: _persistent_results; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._persistent_results ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "REQUESTING_USER", "REQUEST_DATE", "REQUEST_PARAMETERS", "LAST_RETRY_DATE", "ATTEMPT_COUNT", "STATUS", "RESULT_TYPE", "COMPLETION_DATE", "FORM_ID_KEY", "URI_FILTER_GROUP") FROM stdin;
\.


--
-- Data for Name: _registered_users; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._registered_users ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "LOCAL_USERNAME", "OPENID_EMAIL", "FULL_NAME", "BASIC_AUTH_PASSWORD", "BASIC_AUTH_SALT", "DIGEST_AUTH_PASSWORD", "IS_REMOVED") FROM stdin;
uid:odk|2020-03-25T08:13:36.706598Z	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.706	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:15:59.051	odk	\N	odk	4969250c44d1476dcb712f47444fbea936d290a3	-koeors	0ca6cebf2d9d798f0f2d6a8d93e431ce	f
\.


--
-- Data for Name: _security_revisions; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._security_revisions ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "LAST_REVISION") FROM stdin;
rid:super_user_id	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.807	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.809	2020-03-25 08:13:36.809
rid:permissions_view	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:14:44.462	\N	2020-03-25 08:14:44.462	2020-03-25 08:14:44.462
rid:registered_users	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.933	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:15:59.055	2020-03-25 08:15:59.055
rid:role_hierarchy	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.826	uid:odk|2020-03-25T08:13:36.706598Z	2020-03-25 08:15:59.057	2020-03-25 08:15:59.057
\.


--
-- Data for Name: _server_preferences_properties; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._server_preferences_properties ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "KEY", "VALUE") FROM stdin;
uuid:3e1b061f-c9d1-4140-876b-08d847107226	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.753	\N	2020-03-25 08:13:36.753	LAST_KNOWN_REALM_STRING	odk ODK Aggregate
uuid:abf59490-5683-4324-9318-e3911db27e01	aggregate.opendatakit.org:web-service	2020-03-25 08:13:37.791	\N	2020-03-25 08:13:37.791	SITE_KEY	uuid:f649c7c8-2203-4b35-a5a9-fd9973ef557e
\.


--
-- Data for Name: _task_lock; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._task_lock ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "FORM_ID", "TASK_TYPE", "EXPIRATION_DATETIME") FROM stdin;
\.


--
-- Data for Name: _user_granted_authority; Type: TABLE DATA; Schema: odk; Owner: odk
--

COPY odk._user_granted_authority ("_URI", "_CREATOR_URI_USER", "_CREATION_DATE", "_LAST_UPDATE_URI_USER", "_LAST_UPDATE_DATE", "USER", "GRANTED_AUTHORITY") FROM stdin;
uuid:3d8e9936-5d02-4e6a-ab22-2f7cd400b488	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.927	\N	2020-03-25 08:13:36.927	uid:odk|2020-03-25T08:13:36.706598Z	GROUP_SITE_ADMINS
uuid:aaafd4e5-9964-4c8a-8973-6250649dcc0a	aggregate.opendatakit.org:web-service	2020-03-25 08:13:36.954	\N	2020-03-25 08:13:36.954	uid:odk|2020-03-25T08:13:36.706598Z	ROLE_SITE_ACCESS_ADMIN
\.


--
-- Name: TRACE_ODK_DHIS2_DATA_COLLECTION_CORE TRACE_ODK_DHIS2_DATA_COLLECTION_CORE__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk."TRACE_ODK_DHIS2_DATA_COLLECTION_CORE"
    ADD CONSTRAINT "TRACE_ODK_DHIS2_DATA_COLLECTION_CORE__URI_key" UNIQUE ("_URI");


--
-- Name: _backend_actions _backend_actions__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._backend_actions
    ADD CONSTRAINT "_backend_actions__URI_key" UNIQUE ("_URI");


--
-- Name: _form_data_model _form_data_model__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._form_data_model
    ADD CONSTRAINT "_form_data_model__URI_key" UNIQUE ("_URI");


--
-- Name: _form_info _form_info__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._form_info
    ADD CONSTRAINT "_form_info__URI_key" UNIQUE ("_URI");


--
-- Name: _form_info_fileset _form_info_fileset__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._form_info_fileset
    ADD CONSTRAINT "_form_info_fileset__URI_key" UNIQUE ("_URI");


--
-- Name: _form_info_manifest_bin _form_info_manifest_bin__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._form_info_manifest_bin
    ADD CONSTRAINT "_form_info_manifest_bin__URI_key" UNIQUE ("_URI");


--
-- Name: _form_info_manifest_blb _form_info_manifest_blb__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._form_info_manifest_blb
    ADD CONSTRAINT "_form_info_manifest_blb__URI_key" UNIQUE ("_URI");


--
-- Name: _form_info_manifest_ref _form_info_manifest_ref__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._form_info_manifest_ref
    ADD CONSTRAINT "_form_info_manifest_ref__URI_key" UNIQUE ("_URI");


--
-- Name: _form_info_submission_association _form_info_submission_association__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._form_info_submission_association
    ADD CONSTRAINT "_form_info_submission_association__URI_key" UNIQUE ("_URI");


--
-- Name: _form_info_xform_bin _form_info_xform_bin__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._form_info_xform_bin
    ADD CONSTRAINT "_form_info_xform_bin__URI_key" UNIQUE ("_URI");


--
-- Name: _form_info_xform_blb _form_info_xform_blb__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._form_info_xform_blb
    ADD CONSTRAINT "_form_info_xform_blb__URI_key" UNIQUE ("_URI");


--
-- Name: _form_info_xform_ref _form_info_xform_ref__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._form_info_xform_ref
    ADD CONSTRAINT "_form_info_xform_ref__URI_key" UNIQUE ("_URI");


--
-- Name: _form_service_cursor_2 _form_service_cursor_2__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._form_service_cursor_2
    ADD CONSTRAINT "_form_service_cursor_2__URI_key" UNIQUE ("_URI");


--
-- Name: _granted_authority_hierarchy _granted_authority_hierarchy__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._granted_authority_hierarchy
    ADD CONSTRAINT "_granted_authority_hierarchy__URI_key" UNIQUE ("_URI");


--
-- Name: _json_server3 _json_server3__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._json_server3
    ADD CONSTRAINT "_json_server3__URI_key" UNIQUE ("_URI");


--
-- Name: _misc_tasks _misc_tasks__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._misc_tasks
    ADD CONSTRAINT "_misc_tasks__URI_key" UNIQUE ("_URI");


--
-- Name: _persistent_result_file_bin _persistent_result_file_bin__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._persistent_result_file_bin
    ADD CONSTRAINT "_persistent_result_file_bin__URI_key" UNIQUE ("_URI");


--
-- Name: _persistent_result_file_blb _persistent_result_file_blb__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._persistent_result_file_blb
    ADD CONSTRAINT "_persistent_result_file_blb__URI_key" UNIQUE ("_URI");


--
-- Name: _persistent_result_file_ref _persistent_result_file_ref__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._persistent_result_file_ref
    ADD CONSTRAINT "_persistent_result_file_ref__URI_key" UNIQUE ("_URI");


--
-- Name: _persistent_results _persistent_results__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._persistent_results
    ADD CONSTRAINT "_persistent_results__URI_key" UNIQUE ("_URI");


--
-- Name: _registered_users _registered_users__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._registered_users
    ADD CONSTRAINT "_registered_users__URI_key" UNIQUE ("_URI");


--
-- Name: _security_revisions _security_revisions__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._security_revisions
    ADD CONSTRAINT "_security_revisions__URI_key" UNIQUE ("_URI");


--
-- Name: _server_preferences_properties _server_preferences_properties__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._server_preferences_properties
    ADD CONSTRAINT "_server_preferences_properties__URI_key" UNIQUE ("_URI");


--
-- Name: _task_lock _task_lock__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._task_lock
    ADD CONSTRAINT "_task_lock__URI_key" UNIQUE ("_URI");


--
-- Name: _user_granted_authority _user_granted_authority__URI_key; Type: CONSTRAINT; Schema: odk; Owner: odk
--

ALTER TABLE ONLY odk._user_granted_authority
    ADD CONSTRAINT "_user_granted_authority__URI_key" UNIQUE ("_URI");


--
-- Name: TRACE_ODK_DHIS2_DATA_COLLECTION_CORE_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX "TRACE_ODK_DHIS2_DATA_COLLECTION_CORE_lud" ON odk."TRACE_ODK_DHIS2_DATA_COLLECTION_CORE" USING btree ("_LAST_UPDATE_DATE");


--
-- Name: TRACE_ODK_DHIS2_DATA_COLLECTION_CORE_macd; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX "TRACE_ODK_DHIS2_DATA_COLLECTION_CORE_macd" ON odk."TRACE_ODK_DHIS2_DATA_COLLECTION_CORE" USING btree ("_MARKED_AS_COMPLETE_DATE");


--
-- Name: _backend_actions_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _backend_actions_lud ON odk._backend_actions USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _form_data_model_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_data_model_lud ON odk._form_data_model USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _form_data_model_usdm; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_data_model_usdm ON odk._form_data_model USING hash ("URI_SUBMISSION_DATA_MODEL");


--
-- Name: _form_info_fileset_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_fileset_lud ON odk._form_info_fileset USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _form_info_fileset_pa2; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_fileset_pa2 ON odk._form_info_fileset USING hash ("_PARENT_AURI");


--
-- Name: _form_info_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_lud ON odk._form_info USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _form_info_macd; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_macd ON odk._form_info USING btree ("_MARKED_AS_COMPLETE_DATE");


--
-- Name: _form_info_manifest_bin_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_manifest_bin_lud ON odk._form_info_manifest_bin USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _form_info_manifest_bin_pa2; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_manifest_bin_pa2 ON odk._form_info_manifest_bin USING hash ("_PARENT_AURI");


--
-- Name: _form_info_manifest_blb_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_manifest_blb_lud ON odk._form_info_manifest_blb USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _form_info_manifest_ref_da9; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_manifest_ref_da9 ON odk._form_info_manifest_ref USING hash ("_DOM_AURI");


--
-- Name: _form_info_manifest_ref_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_manifest_ref_lud ON odk._form_info_manifest_ref USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _form_info_submission_association_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_submission_association_lud ON odk._form_info_submission_association USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _form_info_submission_association_umfi; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_submission_association_umfi ON odk._form_info_submission_association USING hash ("URI_MD5_FORM_ID");


--
-- Name: _form_info_submission_association_umsfi; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_submission_association_umsfi ON odk._form_info_submission_association USING hash ("URI_MD5_SUBMISSION_FORM_ID");


--
-- Name: _form_info_xform_bin_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_xform_bin_lud ON odk._form_info_xform_bin USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _form_info_xform_bin_pa2; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_xform_bin_pa2 ON odk._form_info_xform_bin USING hash ("_PARENT_AURI");


--
-- Name: _form_info_xform_blb_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_xform_blb_lud ON odk._form_info_xform_blb USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _form_info_xform_ref_da9; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_xform_ref_da9 ON odk._form_info_xform_ref USING hash ("_DOM_AURI");


--
-- Name: _form_info_xform_ref_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_info_xform_ref_lud ON odk._form_info_xform_ref USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _form_service_cursor_2_as2; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_service_cursor_2_as2 ON odk._form_service_cursor_2 USING hash ("AURI_SERVICE");


--
-- Name: _form_service_cursor_2_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_service_cursor_2_lud ON odk._form_service_cursor_2 USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _form_service_cursor_2_umfi; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _form_service_cursor_2_umfi ON odk._form_service_cursor_2 USING hash ("URI_MD5_FORM_ID");


--
-- Name: _granted_authority_hierarchy_dga; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _granted_authority_hierarchy_dga ON odk._granted_authority_hierarchy USING hash ("DOMINATING_GRANTED_AUTHORITY");


--
-- Name: _granted_authority_hierarchy_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _granted_authority_hierarchy_lud ON odk._granted_authority_hierarchy USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _json_server3_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _json_server3_lud ON odk._json_server3 USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _misc_tasks_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _misc_tasks_lud ON odk._misc_tasks USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _persistent_result_file_bin_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _persistent_result_file_bin_lud ON odk._persistent_result_file_bin USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _persistent_result_file_bin_pa2; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _persistent_result_file_bin_pa2 ON odk._persistent_result_file_bin USING hash ("_PARENT_AURI");


--
-- Name: _persistent_result_file_blb_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _persistent_result_file_blb_lud ON odk._persistent_result_file_blb USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _persistent_result_file_ref_da9; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _persistent_result_file_ref_da9 ON odk._persistent_result_file_ref USING hash ("_DOM_AURI");


--
-- Name: _persistent_result_file_ref_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _persistent_result_file_ref_lud ON odk._persistent_result_file_ref USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _persistent_results_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _persistent_results_lud ON odk._persistent_results USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _registered_users_lu4; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _registered_users_lu4 ON odk._registered_users USING btree ("LOCAL_USERNAME");


--
-- Name: _registered_users_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _registered_users_lud ON odk._registered_users USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _registered_users_oe2; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _registered_users_oe2 ON odk._registered_users USING btree ("OPENID_EMAIL");


--
-- Name: _security_revisions_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _security_revisions_lud ON odk._security_revisions USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _server_preferences_properties_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _server_preferences_properties_lud ON odk._server_preferences_properties USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _task_lock_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _task_lock_lud ON odk._task_lock USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _user_granted_authority_lud; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _user_granted_authority_lud ON odk._user_granted_authority USING btree ("_LAST_UPDATE_DATE");


--
-- Name: _user_granted_authority_u4; Type: INDEX; Schema: odk; Owner: odk
--

CREATE INDEX _user_granted_authority_u4 ON odk._user_granted_authority USING btree ("USER");


--
-- PostgreSQL database dump complete
--

