create table STATISTICSPROJECTRC_LOCALITY (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    LOCALITY varchar(255) not null,
    COUNTRY varchar(255),
    --
    primary key (ID)
);