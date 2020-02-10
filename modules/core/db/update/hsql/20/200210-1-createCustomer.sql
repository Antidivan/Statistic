create table STATISTICSPROJECTRC_CUSTOMER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    SURNAME varchar(63),
    FIRST_NAME varchar(63),
    PATRONYMIC varchar(63),
    TOWN_CU_ID varchar(36),
    USER_ID varchar(36),
    --
    primary key (ID)
);