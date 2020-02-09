create table STATISTICSPROJECTRC_CONSULTANTS
(
    ID                   varchar(36)  not null,
    VERSION              integer      not null,
    CREATE_TS            timestamp,
    CREATED_BY           varchar(50),
    UPDATE_TS            timestamp,
    UPDATED_BY           varchar(50),
    DELETE_TS            timestamp,
    DELETED_BY           varchar(50),
    --
    USER_ID              varchar(36)  not null,
    FULL_NAME_CONSULTANT varchar(255) not null,
    EMAIL_WORK           varchar(255) not null,
    --
    primary key (ID)
);