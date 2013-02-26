/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases v6.3.4                     */
/* Target DBMS:           Oracle 11g                                      */
/* Project file:          DBS3.dez                                        */
/* Project name:          DBS3                                            */
/* Author:                Yuyi Guo for DBS Group                          */
/* Script type:           Database creation script                        */
/* Created on:            2013-02-20 11:15                                */
/* ---------------------------------------------------------------------- */


CREATE ROLE CMS_DBS3_READ_ROLE;
CREATE ROLE CMS_DBS3_WRITE_ROLE;
CREATE ROLE CMS_DBS3_ADMIN_ROLE;
GRANT CMS_DBS3_READ_ROLE TO CMS_DBS3_READER;
GRANT CMS_DBS3_READ_ROLE, CMS_DBS3_WRITE_ROLE TO CMS_DBS3_WRITER;
GRANT CMS_DBS3_READ_ROLE, CMS_DBS3_WRITE_ROLE, CMS_DBS3_ADMIN_ROLE TO CMS_DBS3_ADMIN;

/* ---------------------------------------------------------------------- */
/* Sequences                                                              */
/* ---------------------------------------------------------------------- */

CREATE SEQUENCE SEQ_RV
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_PSH
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_DR
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_PG
    START WITH 100
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 20
    noorder;

CREATE SEQUENCE SEQ_DT
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_PDS
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_PDT
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_OMC
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_DC
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_DP
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_DTP
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_DS
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_AE
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_BP
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_PSDS
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_AQE
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_PE
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_FLM
    START WITH 1
    INCREMENT BY 1000
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_BK
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_SI
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_SE
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_BSE
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_FL
    START WITH 1
    INCREMENT BY 40
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_FP
    START WITH 1
    INCREMENT BY 120
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_FT
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_AF
    START WITH 1
    INCREMENT BY 120
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_BH
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_FC
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_DV
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_BLST
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_MB
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_MR
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

CREATE SEQUENCE SEQ_CS
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    nocycle
    CACHE 5000
    noorder;

/* ---------------------------------------------------------------------- */
/* Tables                                                                 */
/* ---------------------------------------------------------------------- */

/* ---------------------------------------------------------------------- */
/* Add table "APPLICATION_EXECUTABLES"                                    */
/* ---------------------------------------------------------------------- */

CREATE TABLE APPLICATION_EXECUTABLES (
    APP_EXEC_ID INTEGER CONSTRAINT NN_AE_APP_EXEC_ID NOT NULL,
    APP_NAME VARCHAR2(100) CONSTRAINT NN_AE_APP_NAME NOT NULL,
    CONSTRAINT PK_AE PRIMARY KEY (APP_EXEC_ID),
    CONSTRAINT TUC_AE_APP_NAME UNIQUE (APP_NAME)
);
GRANT SELECT ON APPLICATION_EXECUTABLES TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON APPLICATION_EXECUTABLES TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON APPLICATION_EXECUTABLES TO CMS_DBS3_ADMIN_ROLE;

/* ---------------------------------------------------------------------- */
/* Add table "RELEASE_VERSIONS"                                           */
/* ---------------------------------------------------------------------- */

CREATE TABLE RELEASE_VERSIONS (
    RELEASE_VERSION_ID INTEGER CONSTRAINT NN_RV_RELEASE_VERSION_ID NOT NULL,
    RELEASE_VERSION VARCHAR2(100) CONSTRAINT NN_RV_RELEASE_VERSION NOT NULL,
    CONSTRAINT PK_RV PRIMARY KEY (RELEASE_VERSION_ID),
    CONSTRAINT TUC_RV_RELEASE_VERSION UNIQUE (RELEASE_VERSION)
);
GRANT SELECT ON RELEASE_VERSIONS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON RELEASE_VERSIONS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON RELEASE_VERSIONS TO CMS_DBS3_ADMIN_ROLE;

/* ---------------------------------------------------------------------- */
/* Add table "PROCESSED_DATASETS"                                         */
/* ---------------------------------------------------------------------- */

CREATE TABLE PROCESSED_DATASETS (
    PROCESSED_DS_ID INTEGER CONSTRAINT NN_PSDS_PROCESSED_DS_ID NOT NULL,
    PROCESSED_DS_NAME VARCHAR2(200) CONSTRAINT NN_PSDS_PROCESSED_DS_NAME NOT NULL,
    CONSTRAINT PK_PSDS PRIMARY KEY (PROCESSED_DS_ID),
    CONSTRAINT TUC_PSDS_PROCESSED_DS_NAME UNIQUE (PROCESSED_DS_NAME)
);
GRANT SELECT ON PROCESSED_DATASETS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON PROCESSED_DATASETS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON PROCESSED_DATASETS TO CMS_DBS3_ADMIN_ROLE;

/* ---------------------------------------------------------------------- */
/* Add table "BRANCH_HASHES"                                              */
/* ---------------------------------------------------------------------- */

CREATE TABLE BRANCH_HASHES (
    BRANCH_HASH_ID INTEGER CONSTRAINT NN_BH_BRANCH_HASH_ID NOT NULL,
    BRANCH_HASH VARCHAR2(700) CONSTRAINT NN_BH_BRANCH_HASH NOT NULL,
    CONTENT CLOB,
    CONSTRAINT PK_BH PRIMARY KEY (BRANCH_HASH_ID)
);
GRANT SELECT ON BRANCH_HASHES TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON BRANCH_HASHES TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON BRANCH_HASHES TO CMS_DBS3_ADMIN_ROLE;

/* ---------------------------------------------------------------------- */
/* Add table "FILE_DATA_TYPES"                                            */
/* ---------------------------------------------------------------------- */

CREATE TABLE FILE_DATA_TYPES (
    FILE_TYPE_ID INTEGER CONSTRAINT NN_FT_FILE_TYPE_ID NOT NULL,
    FILE_TYPE VARCHAR2(100) CONSTRAINT NN_FT_FILE_TYPE NOT NULL,
    CONSTRAINT PK_FT PRIMARY KEY (FILE_TYPE_ID),
    CONSTRAINT TUC_FT_FILE_TYPE UNIQUE (FILE_TYPE)
);
GRANT SELECT ON FILE_DATA_TYPES TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON FILE_DATA_TYPES  TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON FILE_DATA_TYPES  TO CMS_DBS3_ADMIN_ROLE;

/* ---------------------------------------------------------------------- */
/* Add table "PHYSICS_GROUPS"                                             */
/* ---------------------------------------------------------------------- */

CREATE TABLE PHYSICS_GROUPS (
    PHYSICS_GROUP_ID INTEGER CONSTRAINT NN_PG_PHYSICS_GROUP_ID NOT NULL,
    PHYSICS_GROUP_NAME VARCHAR2(100) CONSTRAINT NN_PG_PHYSICS_GROUP_NAME NOT NULL,
    CONSTRAINT PK_PG PRIMARY KEY (PHYSICS_GROUP_ID),
    CONSTRAINT TUC_PG_PHYSICS_GROUP_NAME UNIQUE (PHYSICS_GROUP_NAME)
);
GRANT SELECT ON PHYSICS_GROUPS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON PHYSICS_GROUPS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON PHYSICS_GROUPS TO CMS_DBS3_ADMIN_ROLE;

/* ---------------------------------------------------------------------- */
/* Add table "PRIMARY_DS_TYPES"                                           */
/* ---------------------------------------------------------------------- */

CREATE TABLE PRIMARY_DS_TYPES (
    PRIMARY_DS_TYPE_ID INTEGER CONSTRAINT NN_PDT_PRIMARY_DS_TYPE_ID NOT NULL,
    PRIMARY_DS_TYPE VARCHAR2(100) CONSTRAINT NN_PDT_PRIMARY_DS_TYPE NOT NULL,
    CONSTRAINT PK_PDT PRIMARY KEY (PRIMARY_DS_TYPE_ID),
    CONSTRAINT TUC_PDT_PRIMARY_DS_TYPE UNIQUE (PRIMARY_DS_TYPE)
);
GRANT SELECT ON PRIMARY_DS_TYPES TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON PRIMARY_DS_TYPES TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON PRIMARY_DS_TYPES TO CMS_DBS3_ADMIN_ROLE;

/* ---------------------------------------------------------------------- */
/* Add table "DATASET_ACCESS_TYPES"                                       */
/* ---------------------------------------------------------------------- */

CREATE TABLE DATASET_ACCESS_TYPES (
    DATASET_ACCESS_TYPE_ID INTEGER CONSTRAINT NN_DTP_DATASET_ACCESS_TYPE_ID NOT NULL,
    DATASET_ACCESS_TYPE VARCHAR2(100) CONSTRAINT NN_DTP_DATASET_ACCESS_TYPE NOT NULL,
    CONSTRAINT PK_DTP PRIMARY KEY (DATASET_ACCESS_TYPE_ID),
    CONSTRAINT TUC_DTP_DATASET_ACCESS_TYPE UNIQUE (DATASET_ACCESS_TYPE)
);
GRANT SELECT ON DATASET_ACCESS_TYPES TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON DATASET_ACCESS_TYPES TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON DATASET_ACCESS_TYPES TO CMS_DBS3_ADMIN_ROLE;

/* ---------------------------------------------------------------------- */
/* Add table "PARAMETER_SET_HASHES"                                       */
/* ---------------------------------------------------------------------- */

CREATE TABLE PARAMETER_SET_HASHES (
    PARAMETER_SET_HASH_ID INTEGER CONSTRAINT NN_PSH_PARAMETER_SET_HASH_ID NOT NULL,
    PSET_HASH VARCHAR2(128) CONSTRAINT NN_PSH_PSET_HASH NOT NULL,
    PSET_NAME VARCHAR2(100),
    CONSTRAINT PK_PSH PRIMARY KEY (PARAMETER_SET_HASH_ID),
    CONSTRAINT TUC_PSH_PSET_HASH UNIQUE (PSET_HASH)
);
GRANT SELECT ON PARAMETER_SET_HASHES TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON PARAMETER_SET_HASHES TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON PARAMETER_SET_HASHES TO CMS_DBS3_ADMIN_ROLE;

CREATE INDEX IDX_PSH_1 ON PARAMETER_SET_HASHES (PSET_NAME);

/* ---------------------------------------------------------------------- */
/* Add table "DBS_VERSIONS"                                               */
/* ---------------------------------------------------------------------- */

CREATE TABLE DBS_VERSIONS (
    DBS_VERSION_ID INTEGER CONSTRAINT NN_DV_DBS_VERSION_ID NOT NULL,
    SCHEMA_VERSION VARCHAR2(40) CONSTRAINT NN_DV_SCHEMA_VERSION NOT NULL,
    DBS_RELEASE_VERSION VARCHAR2(40) CONSTRAINT NN_DV_DBS_RELEASE_VERSION NOT NULL,
    INSTANCE_NAME VARCHAR2(40) CONSTRAINT NN_DV_INSTANCE_NAME NOT NULL,
    INSTANCE_TYPE VARCHAR2(40) CONSTRAINT NN_DV_INSTANCE_TYPE NOT NULL,
    CREATION_DATE INTEGER,
    LAST_MODIFICATION_DATE INTEGER,
    CONSTRAINT PK_DV PRIMARY KEY (DBS_VERSION_ID)
);
GRANT SELECT ON DBS_VERSIONS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON DBS_VERSIONS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON DBS_VERSIONS TO CMS_DBS3_ADMIN_ROLE;

/* ---------------------------------------------------------------------- */
/* Add table "OUTPUT_MODULE_CONFIGS"                                      */
/* ---------------------------------------------------------------------- */

CREATE TABLE OUTPUT_MODULE_CONFIGS (
    OUTPUT_MOD_CONFIG_ID INTEGER CONSTRAINT NN_OMC_OUTPUT_MOD_CONFIG_ID NOT NULL,
    APP_EXEC_ID INTEGER CONSTRAINT NN_OMC_APP_EXEC_ID NOT NULL,
    RELEASE_VERSION_ID INTEGER CONSTRAINT NN_OMC_RELEASE_VERSION_ID NOT NULL,
    PARAMETER_SET_HASH_ID INTEGER CONSTRAINT NN_OMC_PARAMETER_SET_HASH_ID NOT NULL,
    OUTPUT_MODULE_LABEL VARCHAR2(45) DEFAULT 'NONE' CONSTRAINT NN_OMC_OUTPUT_MODULE_LABEL NOT NULL,
    GLOBAL_TAG VARCHAR2(255) NOT NULL,
    SCENARIO VARCHAR2(40),
    CREATION_DATE INTEGER,
    CREATE_BY VARCHAR2(500),
    CONSTRAINT PK_OMC PRIMARY KEY (OUTPUT_MOD_CONFIG_ID),
    CONSTRAINT TUC_OMC_1 UNIQUE (APP_EXEC_ID, RELEASE_VERSION_ID, PARAMETER_SET_HASH_ID, OUTPUT_MODULE_LABEL, GLOBAL_TAG)
);
GRANT SELECT ON OUTPUT_MODULE_CONFIGS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON OUTPUT_MODULE_CONFIGS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON OUTPUT_MODULE_CONFIGS TO CMS_DBS3_ADMIN_ROLE;

CREATE INDEX ID_OMC_1 ON OUTPUT_MODULE_CONFIGS (RELEASE_VERSION_ID);

CREATE INDEX ID_OMC_2 ON OUTPUT_MODULE_CONFIGS (PARAMETER_SET_HASH_ID);

CREATE INDEX ID_OMC_3 ON OUTPUT_MODULE_CONFIGS (OUTPUT_MODULE_LABEL);

CREATE INDEX ID_OMC_4 ON OUTPUT_MODULE_CONFIGS (APP_EXEC_ID);

/* ---------------------------------------------------------------------- */
/* Add table "DATA_TIERS"                                                 */
/* ---------------------------------------------------------------------- */

CREATE TABLE DATA_TIERS (
    DATA_TIER_ID INTEGER CONSTRAINT NN_DT_DATA_TIER_ID NOT NULL,
    DATA_TIER_NAME VARCHAR2(100) CONSTRAINT NN_DT_DATA_TIER_NAME NOT NULL,
    CREATION_DATE INTEGER,
    CREATE_BY VARCHAR2(500),
    CONSTRAINT PK_DT PRIMARY KEY (DATA_TIER_ID),
    CONSTRAINT TUC_DT_DATA_TIER_NAME UNIQUE (DATA_TIER_NAME)
);
GRANT SELECT ON DATA_TIERS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON DATA_TIERS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON DATA_TIERS TO CMS_DBS3_ADMIN_ROLE;

/* ---------------------------------------------------------------------- */
/* Add table "PRIMARY_DATASETS"                                           */
/* ---------------------------------------------------------------------- */

CREATE TABLE PRIMARY_DATASETS (
    PRIMARY_DS_ID INTEGER CONSTRAINT NN_PDS_PRIMARY_DS_ID NOT NULL,
    PRIMARY_DS_NAME VARCHAR2(100) CONSTRAINT NN_PDS_PRIMARY_DS_NAME NOT NULL,
    PRIMARY_DS_TYPE_ID INTEGER CONSTRAINT NN_PDS_PRIMARY_DS_TYPE_ID NOT NULL,
    CREATION_DATE INTEGER,
    CREATE_BY VARCHAR2(500),
    CONSTRAINT PK_PDS PRIMARY KEY (PRIMARY_DS_ID),
    CONSTRAINT TUC_PDS_PRIMARY_DS_NAME UNIQUE (PRIMARY_DS_NAME)
);
GRANT SELECT ON PRIMARY_DATASETS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON PRIMARY_DATASETS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON PRIMARY_DATASETS TO CMS_DBS3_ADMIN_ROLE;

CREATE INDEX IDX_PDS_1 ON PRIMARY_DATASETS (PRIMARY_DS_TYPE_ID);

/* ---------------------------------------------------------------------- */
/* Add table "ACQUISITION_ERAS"                                           */
/* ---------------------------------------------------------------------- */

CREATE TABLE ACQUISITION_ERAS (
    ACQUISITION_ERA_ID INTEGER CONSTRAINT NN_AQE_ACQUISITION_ERA_ID NOT NULL,
    ACQUISITION_ERA_NAME VARCHAR2(120) CONSTRAINT NN_AQE_ACQUISITION_ERA_NAME NOT NULL,
    START_DATE INTEGER CONSTRAINT NN_AQE_START_DATE NOT NULL,
    END_DATE INTEGER,
    CREATION_DATE INTEGER,
    CREATE_BY VARCHAR2(500),
    DESCRIPTION VARCHAR2(40),
    CONSTRAINT PK_AQE PRIMARY KEY (ACQUISITION_ERA_ID),
    CONSTRAINT TUC_AQE_ACQUISITION_ERA_NAME UNIQUE (ACQUISITION_ERA_NAME)
);
CREATE UNIQUE INDEX TUC_AQE_ACQUISITION_ERA_NAME2 ON ACQUISITION_ERAS
(NLSSORT("ACQUISITION_ERA_NAME",'nls_sort=''BINARY_CI'''));
GRANT SELECT ON ACQUISITION_ERAS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON ACQUISITION_ERAS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON ACQUISITION_ERAS TO CMS_DBS3_ADMIN_ROLE;

/* ---------------------------------------------------------------------- */
/* Add table "PROCESSING_ERAS"                                            */
/* ---------------------------------------------------------------------- */

CREATE TABLE PROCESSING_ERAS (
    PROCESSING_ERA_ID INTEGER CONSTRAINT NN_PE_PROCESSING_ERA_ID NOT NULL,
    PROCESSING_VERSION INTEGER,
    CREATION_DATE INTEGER,
    CREATE_BY VARCHAR2(500),
    DESCRIPTION VARCHAR2(40),
    CONSTRAINT PK_PE PRIMARY KEY (PROCESSING_ERA_ID),
    CONSTRAINT TUC_PE_PROCESSING_VERSION UNIQUE (PROCESSING_VERSION)
);
GRANT SELECT ON PROCESSING_ERAS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON PROCESSING_ERAS  TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON PROCESSING_ERAS  TO CMS_DBS3_ADMIN_ROLE;

/* ---------------------------------------------------------------------- */
/* Add table "MIGRATION_REQUESTS"                                         */
/* ---------------------------------------------------------------------- */

CREATE TABLE MIGRATION_REQUESTS (
    MIGRATION_REQUEST_ID INTEGER CONSTRAINT NN_MR_MIGRATION_REQUEST_ID NOT NULL,
    MIGRATION_URL VARCHAR2(300),
    MIGRATION_INPUT VARCHAR2(700),
    MIGRATION_STATUS INTEGER,
    CREATION_DATE INTEGER,
    CREATE_BY VARCHAR2(500),
    LAST_MODIFICATION_DATE INTEGER,
    LAST_MODIFIED_BY VARCHAR2(500),
    RETRY_COUNT INTEGER,
    CONSTRAINT PK_MR PRIMARY KEY (MIGRATION_REQUEST_ID),
    CONSTRAINT TUC_MR_1 UNIQUE (MIGRATION_INPUT)
);
GRANT SELECT ON MIGRATION_REQUESTS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON MIGRATION_REQUESTS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON MIGRATION_REQUESTS TO CMS_DBS3_ADMIN_ROLE;

/* ---------------------------------------------------------------------- */
/* Add table "MIGRATION_BLOCKS"                                           */
/* ---------------------------------------------------------------------- */

CREATE TABLE MIGRATION_BLOCKS (
    MIGRATION_BLOCK_ID INTEGER CONSTRAINT NN_MB_MIGRATION_BLOCK_ID NOT NULL,
    MIGRATION_REQUEST_ID INTEGER CONSTRAINT NN_MB_MIGRATION_REQUEST_ID NOT NULL,
    MIGRATION_BLOCK_NAME VARCHAR2(700),
    MIGRATION_ORDER INTEGER,
    MIGRATION_STATUS INTEGER,
    CREATION_DATE INTEGER,
    CREATE_BY VARCHAR2(500),
    LAST_MODIFICATION_DATE INTEGER,
    LAST_MODIFIED_BY VARCHAR2(500),
    CONSTRAINT PK_MB PRIMARY KEY (MIGRATION_BLOCK_ID),
    CONSTRAINT TUC_MB_1 UNIQUE (MIGRATION_BLOCK_NAME, MIGRATION_REQUEST_ID)
);
GRANT SELECT ON MIGRATION_BLOCKS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON MIGRATION_BLOCKS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON MIGRATION_BLOCKS TO CMS_DBS3_ADMIN_ROLE;

/* ---------------------------------------------------------------------- */
/* Add table "DATASETS"                                                   */
/* ---------------------------------------------------------------------- */

CREATE TABLE DATASETS (
    DATASET_ID INTEGER CONSTRAINT NN_DS_DATASET_ID NOT NULL,
    DATASET VARCHAR2(700) CONSTRAINT NN_DS_DATASET NOT NULL,
    IS_DATASET_VALID INTEGER DEFAULT 1 CONSTRAINT NN_DS_IS_DATASET_VALID NOT NULL,
    PRIMARY_DS_ID INTEGER CONSTRAINT NN_DS_PRIMARY_DS_ID NOT NULL,
    PROCESSED_DS_ID INTEGER CONSTRAINT NN_DS_PROCESSED_DS_ID NOT NULL,
    DATA_TIER_ID INTEGER CONSTRAINT NN_DS_DATA_TIER_ID NOT NULL,
    DATASET_ACCESS_TYPE_ID INTEGER CONSTRAINT NN_DS_DATASET_ACCESS_TYPE_ID NOT NULL,
    ACQUISITION_ERA_ID INTEGER,
    PROCESSING_ERA_ID INTEGER,
    PHYSICS_GROUP_ID INTEGER,
    XTCROSSSECTION FLOAT(126),
    PREP_ID VARCHAR2(256),
    CREATION_DATE INTEGER,
    CREATE_BY VARCHAR2(500),
    LAST_MODIFICATION_DATE INTEGER,
    LAST_MODIFIED_BY VARCHAR2(500),
    CONSTRAINT PK_DS PRIMARY KEY (DATASET_ID),
    CONSTRAINT TUC_DS_DATASET UNIQUE (DATASET)
);
GRANT SELECT ON DATASETS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON DATASETS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON DATASETS TO CMS_DBS3_ADMIN_ROLE;

CREATE INDEX IDX_DS_1 ON DATASETS (PRIMARY_DS_ID);

CREATE INDEX IDX_DS_2 ON DATASETS (DATA_TIER_ID);

CREATE INDEX IDX_DS_3 ON DATASETS (PROCESSED_DS_ID);

CREATE INDEX IDX_DS_4 ON DATASETS (DATASET_ACCESS_TYPE_ID);

CREATE INDEX IDX_DS_5 ON DATASETS (PHYSICS_GROUP_ID);

CREATE INDEX IDX_DS_6 ON DATASETS (ACQUISITION_ERA_ID);

CREATE INDEX IDX_DS_7 ON DATASETS (PROCESSING_ERA_ID);

CREATE INDEX ID_DS_8 ON DATASETS (CREATION_DATE);

CREATE INDEX ID_DS_9 ON DATASETS (CREATE_BY);

ALTER TABLE DATASETS ADD CONSTRAINT CC_DS_IS_DATASET_VALID 
    CHECK (IS_DATASET_VALID in (1,0));

/* ---------------------------------------------------------------------- */
/* Add table "BLOCKS"                                                     */
/* ---------------------------------------------------------------------- */

CREATE TABLE BLOCKS (
    BLOCK_ID INTEGER CONSTRAINT NN_BK_BLOCK_ID NOT NULL,
    BLOCK_NAME VARCHAR2(500) CONSTRAINT NN_BK_BLOCK_NAME NOT NULL,
    DATASET_ID INTEGER CONSTRAINT NN_BK_DATASET_ID NOT NULL,
    OPEN_FOR_WRITING INTEGER DEFAULT 1 CONSTRAINT NN_BK_OPEN_FOR_WRITING NOT NULL,
    ORIGIN_SITE_NAME VARCHAR2(100) CONSTRAINT NN_BK_ORIGIN_SITE_NAME NOT NULL,
    BLOCK_SIZE INTEGER,
    FILE_COUNT INTEGER,
    CREATION_DATE INTEGER,
    CREATE_BY VARCHAR2(500),
    LAST_MODIFICATION_DATE INTEGER,
    LAST_MODIFIED_BY VARCHAR2(500),
    CONSTRAINT PK_BK PRIMARY KEY (BLOCK_ID),
    CONSTRAINT TUC_BK_BLOCK_NAME UNIQUE (BLOCK_NAME)
);
GRANT SELECT ON BLOCKS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON BLOCKS  TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON BLOCKS  TO CMS_DBS3_ADMIN_ROLE;

CREATE INDEX IDX_BK_1 ON BLOCKS (DATASET_ID);

CREATE INDEX ID_BK_2 ON BLOCKS (BLOCK_SIZE);

CREATE INDEX ID_BK_3 ON BLOCKS (FILE_COUNT);

CREATE INDEX ID_BK_4 ON BLOCKS (CREATION_DATE);

CREATE INDEX ID_BK_5 ON BLOCKS (CREATE_BY);

ALTER TABLE BLOCKS ADD CONSTRAINT CC_BK_OPEN_FOR_WRITING 
    CHECK (OPEN_FOR_WRITING IN (1,0));

/* ---------------------------------------------------------------------- */
/* Add table "BLOCK_PARENTS"                                              */
/* ---------------------------------------------------------------------- */

CREATE TABLE BLOCK_PARENTS (
    THIS_BLOCK_ID INTEGER CONSTRAINT NN_BP_THIS_BLOCK_ID NOT NULL,
    PARENT_BLOCK_ID INTEGER CONSTRAINT NN_BP_PARENT_BLOCK_ID NOT NULL,
    CONSTRAINT PK_BP PRIMARY KEY (THIS_BLOCK_ID, PARENT_BLOCK_ID)
)
ORGANIZATION INDEX;
GRANT SELECT ON BLOCK_PARENTS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON BLOCK_PARENTS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON BLOCK_PARENTS TO CMS_DBS3_ADMIN_ROLE;

CREATE INDEX IDX_BP_1 ON BLOCK_PARENTS (PARENT_BLOCK_ID);

/* ---------------------------------------------------------------------- */
/* Add table "FILES"                                                      */
/* ---------------------------------------------------------------------- */

CREATE TABLE FILES (
    FILE_ID INTEGER CONSTRAINT NN_FL_FILE_ID NOT NULL,
    LOGICAL_FILE_NAME VARCHAR2(500) CONSTRAINT NN_FL_LOGICAL_FILE_NAME NOT NULL,
    IS_FILE_VALID INTEGER DEFAULT 1 CONSTRAINT NN_FL_IS_FILE_VALID NOT NULL,
    DATASET_ID INTEGER CONSTRAINT NN_FL_DATASET_ID NOT NULL,
    BLOCK_ID INTEGER CONSTRAINT NN_FL_BLOCK_ID NOT NULL,
    FILE_TYPE_ID INTEGER CONSTRAINT NN_FL_FILE_TYPE_ID NOT NULL,
    CHECK_SUM VARCHAR2(100) CONSTRAINT NN_FL_CHECK_SUM NOT NULL,
    EVENT_COUNT INTEGER CONSTRAINT NN_FL_EVENT_COUNT NOT NULL,
    FILE_SIZE INTEGER CONSTRAINT NN_FL_FILE_SIZE NOT NULL,
    BRANCH_HASH_ID INTEGER,
    ADLER32 VARCHAR2(100) DEFAULT 'NOTSET',
    MD5 VARCHAR2(100) DEFAULT 'NOTSET',
    AUTO_CROSS_SECTION FLOAT(126),
    CREATION_DATE INTEGER,
    CREATE_BY VARCHAR2(500),
    LAST_MODIFICATION_DATE INTEGER,
    LAST_MODIFIED_BY VARCHAR2(500),
    CONSTRAINT PK_FL PRIMARY KEY (FILE_ID),
    CONSTRAINT TUC_FL_LOGICAL_FILE_NAME UNIQUE (LOGICAL_FILE_NAME)
);
GRANT SELECT ON FILES TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON FILES  TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON FILES  TO CMS_DBS3_ADMIN_ROLE;

CREATE INDEX IDX_FL_1 ON FILES (DATASET_ID);

CREATE INDEX IDX_FL_2 ON FILES (BLOCK_ID);

CREATE INDEX IDX_FL_3 ON FILES (FILE_TYPE_ID);

CREATE INDEX IDX_FL_4 ON FILES (BRANCH_HASH_ID);

CREATE INDEX IDX_FL_5 ON FILES (FILE_SIZE);

CREATE INDEX IDX_FL_6 ON FILES (CREATION_DATE);

CREATE INDEX IDX_FL_7 ON FILES (CREATE_BY);

ALTER TABLE FILES ADD CONSTRAINT CC_FL_IS_FILE_VALID 
    CHECK (IS_FILE_VALID in (1,0));

/* ---------------------------------------------------------------------- */
/* Add table "DATASET_OUTPUT_MOD_CONFIGS"                                 */
/* ---------------------------------------------------------------------- */

CREATE TABLE DATASET_OUTPUT_MOD_CONFIGS (
    DS_OUTPUT_MOD_CONF_ID INTEGER CONSTRAINT NN_DC_DS_OUTPUT_MOD_CONF_ID NOT NULL,
    DATASET_ID INTEGER CONSTRAINT NN_DC_DATASET_ID NOT NULL,
    OUTPUT_MOD_CONFIG_ID INTEGER CONSTRAINT NN_DC_OUTPUT_MOD_CONFIG_ID NOT NULL,
    CONSTRAINT PK_DC PRIMARY KEY (DS_OUTPUT_MOD_CONF_ID),
    CONSTRAINT TUC_DC_1 UNIQUE (DATASET_ID, OUTPUT_MOD_CONFIG_ID)
);
GRANT SELECT ON DATASET_OUTPUT_MOD_CONFIGS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON DATASET_OUTPUT_MOD_CONFIGS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON DATASET_OUTPUT_MOD_CONFIGS TO CMS_DBS3_ADMIN_ROLE;

CREATE INDEX IDX_DC_1 ON DATASET_OUTPUT_MOD_CONFIGS (DATASET_ID);

CREATE INDEX IDX_DC_2 ON DATASET_OUTPUT_MOD_CONFIGS (OUTPUT_MOD_CONFIG_ID);

/* ---------------------------------------------------------------------- */
/* Add table "DATASET_PARENTS"                                            */
/* ---------------------------------------------------------------------- */

CREATE TABLE DATASET_PARENTS (
    THIS_DATASET_ID INTEGER CONSTRAINT NN_DP_THIS_DATASET_ID NOT NULL,
    PARENT_DATASET_ID INTEGER CONSTRAINT NN_DP_PARENT_DATASET_ID NOT NULL,
    CONSTRAINT PK_DP PRIMARY KEY (THIS_DATASET_ID, PARENT_DATASET_ID)
)
ORGANIZATION INDEX;
GRANT SELECT ON DATASET_PARENTS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON DATASET_PARENTS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON DATASET_PARENTS TO CMS_DBS3_ADMIN_ROLE;

CREATE INDEX IDX_DP_1 ON DATASET_PARENTS (PARENT_DATASET_ID);

/* ---------------------------------------------------------------------- */
/* Add table "DATASET_RUNS"                                               */
/* ---------------------------------------------------------------------- */

CREATE TABLE DATASET_RUNS (
    DATASET_RUN_ID INTEGER CONSTRAINT NN_DR_DATASET_RUN_ID NOT NULL,
    DATASET_ID INTEGER CONSTRAINT NN_DR_DATASET_ID NOT NULL,
    RUN_NUMBER INTEGER,
    COMPLETE INTEGER DEFAULT 0,
    LUMI_SECTION_COUNT INTEGER,
    CREATION_DATE INTEGER,
    CREATE_BY VARCHAR2(500),
    CONSTRAINT PK_DR PRIMARY KEY (DATASET_RUN_ID)
);
GRANT SELECT ON DATASET_RUNS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON DATASET_RUNS TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON DATASET_RUNS TO CMS_DBS3_ADMIN_ROLE;

CREATE INDEX IDX_DR_1 ON DATASET_RUNS (DATASET_ID);

CREATE INDEX IDX_DR_2 ON DATASET_RUNS (RUN_NUMBER);

CREATE INDEX IDX_DR_3 ON DATASET_RUNS (LUMI_SECTION_COUNT);

/* ---------------------------------------------------------------------- */
/* Add table "FILE_OUTPUT_MOD_CONFIGS"                                    */
/* ---------------------------------------------------------------------- */

CREATE TABLE FILE_OUTPUT_MOD_CONFIGS (
    FILE_OUTPUT_CONFIG_ID INTEGER CONSTRAINT NN_FC_FILE_OUTPUT_CONFIG_ID NOT NULL,
    FILE_ID INTEGER CONSTRAINT NN_FC_FILE_ID NOT NULL,
    OUTPUT_MOD_CONFIG_ID INTEGER CONSTRAINT NN_FC_OUTPUT_MOD_CONFIG_ID NOT NULL,
    CONSTRAINT PK_FC PRIMARY KEY (FILE_OUTPUT_CONFIG_ID),
    CONSTRAINT TUC_FC_1 UNIQUE (FILE_ID, OUTPUT_MOD_CONFIG_ID)
);
GRANT SELECT ON FILE_OUTPUT_MOD_CONFIGS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON FILE_OUTPUT_MOD_CONFIGS  TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON FILE_OUTPUT_MOD_CONFIGS  TO CMS_DBS3_ADMIN_ROLE;

CREATE INDEX IDX_FC_1 ON FILE_OUTPUT_MOD_CONFIGS (FILE_ID);

CREATE INDEX IDX_FC_2 ON FILE_OUTPUT_MOD_CONFIGS (OUTPUT_MOD_CONFIG_ID);

/* ---------------------------------------------------------------------- */
/* Add table "ASSOCIATED_FILES"                                           */
/* ---------------------------------------------------------------------- */

CREATE TABLE ASSOCIATED_FILES (
    ASSOCATED_FILE_ID INTEGER CONSTRAINT NN_AF_ASSOCATED_FILE_ID NOT NULL,
    THIS_FILE_ID INTEGER CONSTRAINT NN_AF_THIS_FILE_ID NOT NULL,
    ASSOCATED_FILE INTEGER CONSTRAINT NN_AF_ASSOCATED_FILE NOT NULL,
    CONSTRAINT PK_AF PRIMARY KEY (ASSOCATED_FILE_ID),
    CONSTRAINT TUC_AF_1 UNIQUE (THIS_FILE_ID, ASSOCATED_FILE)
);
GRANT SELECT ON ASSOCIATED_FILES TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON ASSOCIATED_FILES TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON ASSOCIATED_FILES TO CMS_DBS3_ADMIN_ROLE;

CREATE INDEX IDX_AF_1 ON ASSOCIATED_FILES (THIS_FILE_ID);

CREATE INDEX IDX_AF_2 ON ASSOCIATED_FILES (ASSOCATED_FILE);

/* ---------------------------------------------------------------------- */
/* Add table "FILE_PARENTS"                                               */
/* ---------------------------------------------------------------------- */

CREATE TABLE FILE_PARENTS (
    THIS_FILE_ID INTEGER CONSTRAINT NN_FP_THIS_FILE_ID NOT NULL,
    PARENT_FILE_ID INTEGER CONSTRAINT NN_FP_PARENT_FILE_ID NOT NULL,
    CONSTRAINT PK_FP PRIMARY KEY (THIS_FILE_ID, PARENT_FILE_ID)
)
ORGANIZATION INDEX;
GRANT SELECT ON FILE_PARENTS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON FILE_PARENTS  TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON FILE_PARENTS  TO CMS_DBS3_ADMIN_ROLE;

CREATE INDEX IDX_FP_1 ON FILE_PARENTS (PARENT_FILE_ID);

/* ---------------------------------------------------------------------- */
/* Add table "FILE_LUMIS"                                                 */
/* ---------------------------------------------------------------------- */

CREATE TABLE FILE_LUMIS (
    RUN_NUM INTEGER CONSTRAINT NN_FLM_RUN_NUM NOT NULL,
    LUMI_SECTION_NUM INTEGER CONSTRAINT NN_FLM_LUMI_SECTION_NUM NOT NULL,
    FILE_ID INTEGER CONSTRAINT NN_FLM_FILE_ID NOT NULL,
    CONSTRAINT PK_FLM PRIMARY KEY (RUN_NUM, LUMI_SECTION_NUM, FILE_ID)
);
GRANT SELECT ON FILE_LUMIS TO CMS_DBS3_READ_ROLE;
GRANT INSERT, UPDATE ON FILE_LUMIS  TO CMS_DBS3_WRITE_ROLE;
GRANT DELETE ON FILE_LUMIS  TO CMS_DBS3_ADMIN_ROLE;

CREATE INDEX IDX_FLM_1 ON FILE_LUMIS (FILE_ID);

/* ---------------------------------------------------------------------- */
/* Foreign key constraints                                                */
/* ---------------------------------------------------------------------- */

ALTER TABLE OUTPUT_MODULE_CONFIGS ADD CONSTRAINT AE_OMC 
    FOREIGN KEY (APP_EXEC_ID) REFERENCES APPLICATION_EXECUTABLES (APP_EXEC_ID) ON DELETE CASCADE;

ALTER TABLE OUTPUT_MODULE_CONFIGS ADD CONSTRAINT RV_OMC 
    FOREIGN KEY (RELEASE_VERSION_ID) REFERENCES RELEASE_VERSIONS (RELEASE_VERSION_ID) ON DELETE CASCADE;

ALTER TABLE OUTPUT_MODULE_CONFIGS ADD CONSTRAINT PSH_OMC 
    FOREIGN KEY (PARAMETER_SET_HASH_ID) REFERENCES PARAMETER_SET_HASHES (PARAMETER_SET_HASH_ID) ON DELETE CASCADE;

ALTER TABLE PRIMARY_DATASETS ADD CONSTRAINT PDT_PDS 
    FOREIGN KEY (PRIMARY_DS_TYPE_ID) REFERENCES PRIMARY_DS_TYPES (PRIMARY_DS_TYPE_ID);

ALTER TABLE DATASETS ADD CONSTRAINT PDS_DS 
    FOREIGN KEY (PRIMARY_DS_ID) REFERENCES PRIMARY_DATASETS (PRIMARY_DS_ID) ON DELETE CASCADE;

ALTER TABLE DATASETS ADD CONSTRAINT DT_DS 
    FOREIGN KEY (DATA_TIER_ID) REFERENCES DATA_TIERS (DATA_TIER_ID) ON DELETE CASCADE;

ALTER TABLE DATASETS ADD CONSTRAINT PSDS_DS 
    FOREIGN KEY (PROCESSED_DS_ID) REFERENCES PROCESSED_DATASETS (PROCESSED_DS_ID) ON DELETE CASCADE;

ALTER TABLE DATASETS ADD CONSTRAINT DTP_DS 
    FOREIGN KEY (DATASET_ACCESS_TYPE_ID) REFERENCES DATASET_ACCESS_TYPES (DATASET_ACCESS_TYPE_ID);

ALTER TABLE DATASETS ADD CONSTRAINT PG_DS 
    FOREIGN KEY (PHYSICS_GROUP_ID) REFERENCES PHYSICS_GROUPS (PHYSICS_GROUP_ID) ON DELETE SET NULL;

ALTER TABLE DATASETS ADD CONSTRAINT AQE_DS 
    FOREIGN KEY (ACQUISITION_ERA_ID) REFERENCES ACQUISITION_ERAS (ACQUISITION_ERA_ID) ON DELETE SET NULL;

ALTER TABLE DATASETS ADD CONSTRAINT PE_DS 
    FOREIGN KEY (PROCESSING_ERA_ID) REFERENCES PROCESSING_ERAS (PROCESSING_ERA_ID) ON DELETE SET NULL;

ALTER TABLE BLOCKS ADD CONSTRAINT DS_BK 
    FOREIGN KEY (DATASET_ID) REFERENCES DATASETS (DATASET_ID) ON DELETE CASCADE;

ALTER TABLE BLOCK_PARENTS ADD CONSTRAINT BK_BP 
    FOREIGN KEY (THIS_BLOCK_ID) REFERENCES BLOCKS (BLOCK_ID) ON DELETE CASCADE;

ALTER TABLE BLOCK_PARENTS ADD CONSTRAINT BK_BP2 
    FOREIGN KEY (PARENT_BLOCK_ID) REFERENCES BLOCKS (BLOCK_ID) ON DELETE CASCADE;

ALTER TABLE FILES ADD CONSTRAINT DS_FL 
    FOREIGN KEY (DATASET_ID) REFERENCES DATASETS (DATASET_ID) ON DELETE CASCADE;

ALTER TABLE FILES ADD CONSTRAINT BK_FL 
    FOREIGN KEY (BLOCK_ID) REFERENCES BLOCKS (BLOCK_ID) ON DELETE CASCADE;

ALTER TABLE FILES ADD CONSTRAINT FT_FL 
    FOREIGN KEY (FILE_TYPE_ID) REFERENCES FILE_DATA_TYPES (FILE_TYPE_ID);

ALTER TABLE FILES ADD CONSTRAINT BH_FL 
    FOREIGN KEY (BRANCH_HASH_ID) REFERENCES BRANCH_HASHES (BRANCH_HASH_ID) ON DELETE SET NULL;

ALTER TABLE DATASET_OUTPUT_MOD_CONFIGS ADD CONSTRAINT DS_DC 
    FOREIGN KEY (DATASET_ID) REFERENCES DATASETS (DATASET_ID) ON DELETE CASCADE;

ALTER TABLE DATASET_OUTPUT_MOD_CONFIGS ADD CONSTRAINT OMC_DC 
    FOREIGN KEY (OUTPUT_MOD_CONFIG_ID) REFERENCES OUTPUT_MODULE_CONFIGS (OUTPUT_MOD_CONFIG_ID) ON DELETE CASCADE;

ALTER TABLE DATASET_PARENTS ADD CONSTRAINT DS_DP 
    FOREIGN KEY (THIS_DATASET_ID) REFERENCES DATASETS (DATASET_ID) ON DELETE CASCADE;

ALTER TABLE DATASET_PARENTS ADD CONSTRAINT DS_DP2 
    FOREIGN KEY (PARENT_DATASET_ID) REFERENCES DATASETS (DATASET_ID) ON DELETE CASCADE;

ALTER TABLE DATASET_RUNS ADD CONSTRAINT DS_DR 
    FOREIGN KEY (DATASET_ID) REFERENCES DATASETS (DATASET_ID) ON DELETE CASCADE;

ALTER TABLE FILE_OUTPUT_MOD_CONFIGS ADD CONSTRAINT FL_FC 
    FOREIGN KEY (FILE_ID) REFERENCES FILES (FILE_ID) ON DELETE CASCADE;

ALTER TABLE FILE_OUTPUT_MOD_CONFIGS ADD CONSTRAINT OMC_FC 
    FOREIGN KEY (OUTPUT_MOD_CONFIG_ID) REFERENCES OUTPUT_MODULE_CONFIGS (OUTPUT_MOD_CONFIG_ID) ON DELETE CASCADE;

ALTER TABLE ASSOCIATED_FILES ADD CONSTRAINT FL_AF 
    FOREIGN KEY (THIS_FILE_ID) REFERENCES FILES (FILE_ID) ON DELETE CASCADE;

ALTER TABLE ASSOCIATED_FILES ADD CONSTRAINT FL_AF2 
    FOREIGN KEY (ASSOCATED_FILE) REFERENCES FILES (FILE_ID) ON DELETE CASCADE;

ALTER TABLE FILE_PARENTS ADD CONSTRAINT FL_FP 
    FOREIGN KEY (THIS_FILE_ID) REFERENCES FILES (FILE_ID) ON DELETE CASCADE;

ALTER TABLE FILE_PARENTS ADD CONSTRAINT FL_FP2 
    FOREIGN KEY (PARENT_FILE_ID) REFERENCES FILES (FILE_ID) ON DELETE CASCADE;

ALTER TABLE FILE_LUMIS ADD CONSTRAINT FL_FLM 
    FOREIGN KEY (FILE_ID) REFERENCES FILES (FILE_ID) ON DELETE CASCADE;

ALTER TABLE MIGRATION_BLOCKS ADD CONSTRAINT MR_MB 
    FOREIGN KEY (MIGRATION_REQUEST_ID) REFERENCES MIGRATION_REQUESTS (MIGRATION_REQUEST_ID) ON DELETE CASCADE;

GRANT SELECT ON SEQ_AE TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_AF TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_AQE TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_BH TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_BK TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_BP TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_BSE TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_BLST TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_CS TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_DC TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_DP TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_DR TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_DS TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_DT TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_DTP TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_DV TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_FC TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_FL TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_FLM TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_FP TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_FT TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_MB TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_MR TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_OMC TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_PDS TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_PDT TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_PE TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_PG TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_PSDS TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_PSH TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_RV TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_SE TO CMS_DBS3_READ_ROLE;
GRANT SELECT ON SEQ_SI TO CMS_DBS3_READ_ROLE;
