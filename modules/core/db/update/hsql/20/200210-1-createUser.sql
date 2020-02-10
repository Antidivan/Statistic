create table STATISTICSPROJECTRC_USER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USER integer not null,
    EMAIL_USER varchar(255) not null,
    LOYALITY integer,
    BIRTHDAY date,
    FIRST_MEETING date,
    --
    primary key (ID)
);