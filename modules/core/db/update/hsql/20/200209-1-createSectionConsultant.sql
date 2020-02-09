create table STATISTICSPROJECTRC_SECTION_CONSULTANT
(
    ID            varchar(36)  not null,
    VERSION       integer      not null,
    CREATE_TS     timestamp,
    CREATED_BY    varchar(50),
    UPDATE_TS     timestamp,
    UPDATED_BY    varchar(50),
    DELETE_TS     timestamp,
    DELETED_BY    varchar(50),
    --
    SECTION_ID    varchar(36)  not null,
    CONSULTANT_ID varchar(36)  not null,
    GRADUATION    varchar(255) not null,
    --
    primary key (ID)
);