create table STATISTICSPROJECTRC_WSITE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    SITE_NAME varchar(255) not null,
    SITE_REGION varchar(255) not null,
    URL_SITE varchar(255) not null,
    --
    primary key (ID)
);