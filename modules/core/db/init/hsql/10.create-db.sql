-- begin STATISTICSPROJECTRC_SITES
create table STATISTICSPROJECTRC_SITES
(
    ID          varchar(36)  not null,
    VERSION     integer      not null,
    CREATE_TS   timestamp,
    CREATED_BY  varchar(50),
    UPDATE_TS   timestamp,
    UPDATED_BY  varchar(50),
    DELETE_TS   timestamp,
    DELETED_BY  varchar(50),
    --
    SITE_NAME   varchar(255) not null,
    SITE_REGION varchar(255) not null,
    URL_SITE    varchar(255) not null,
    --
    primary key (ID)
) ^
-- end STATISTICSPROJECTRC_SITES
-- begin STATISTICSPROJECTRC_CUSTOMERS
create table STATISTICSPROJECTRC_CUSTOMERS
(
    ID         varchar(36) not null,
    VERSION    integer     not null,
    CREATE_TS  timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS  timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS  timestamp,
    DELETED_BY varchar(50),
    --
    SURNAME    varchar(63),
    FIRST_NAME varchar(63),
    PATRONYMIC varchar(63),
    TOWN_CU_ID varchar(36),
    USER_ID    varchar(36),
    --
    primary key (ID)
) ^
-- end STATISTICSPROJECTRC_CUSTOMERS
-- begin STATISTICSPROJECTRC_PAYMENT_METHODS
create table STATISTICSPROJECTRC_PAYMENT_METHODS
(
    ID          varchar(36)  not null,
    VERSION     integer      not null,
    CREATE_TS   timestamp,
    CREATED_BY  varchar(50),
    UPDATE_TS   timestamp,
    UPDATED_BY  varchar(50),
    DELETE_TS   timestamp,
    DELETED_BY  varchar(50),
    --
    NAME_METHOD varchar(255) not null,
    --
    primary key (ID)
) ^
-- end STATISTICSPROJECTRC_PAYMENT_METHODS
-- begin STATISTICSPROJECTRC_ORDERS
create table STATISTICSPROJECTRC_ORDERS
(
    ID                varchar(36)      not null,
    VERSION           integer          not null,
    CREATE_TS         timestamp,
    CREATED_BY        varchar(50),
    UPDATE_TS         timestamp,
    UPDATED_BY        varchar(50),
    DELETE_TS         timestamp,
    DELETED_BY        varchar(50),
    --
    SITE_ORDER_ID     varchar(36)      not null,
    NUMBER_ORDER      varchar(255)     not null,
    DATE_CREATE       timestamp        not null,
    DATE_SALE         timestamp,
    PAYMENT_METHOD_ID varchar(36)      not null,
    COST_FINAL        double precision not null,
    COST_ORDER        double precision not null,
    PAID              boolean          not null,
    CANCELED          boolean          not null,
    PRODUCT_ID        varchar(36)      not null,
    CONSULTANT_ID     varchar(36)      not null,
    customer_ID       varchar(36)      not null,
    DATE_ESTIMATED    date,
    TOWN_ID           varchar(36)      not null,
    --
    primary key (ID)
) ^
-- end STATISTICSPROJECTRC_ORDERS
-- begin STATISTICSPROJECTRC_TOWNS
create table STATISTICSPROJECTRC_TOWNS
(
    ID         varchar(36)  not null,
    VERSION    integer      not null,
    CREATE_TS  timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS  timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS  timestamp,
    DELETED_BY varchar(50),
    --
    locality   varchar(255) not null,
    COUNTRY    varchar(255),
    --
    primary key (ID)
) ^
-- end STATISTICSPROJECTRC_TOWNS
-- begin STATISTICSPROJECTRC_USERS
create table STATISTICSPROJECTRC_USERS
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
    USER          integer      not null,
    EMAIL_USER    varchar(255) not null,
    LOYALITY      integer,
    BIRTHDAY      date,
    first_meeting date,
    --
    primary key (ID)
) ^
-- end STATISTICSPROJECTRC_USERS
-- begin STATISTICSPROJECTRC_CONSULTANTS
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
) ^
-- end STATISTICSPROJECTRC_CONSULTANTS
-- begin STATISTICSPROJECTRC_PROJECTS
create table STATISTICSPROJECTRC_PROJECTS
(
    ID           varchar(36)  not null,
    VERSION      integer      not null,
    CREATE_TS    timestamp,
    CREATED_BY   varchar(50),
    UPDATE_TS    timestamp,
    UPDATED_BY   varchar(50),
    DELETE_TS    timestamp,
    DELETED_BY   varchar(50),
    --
    NAME_PROJECT varchar(255) not null,
    DATE_START   date         not null,
    --
    primary key (ID)
) ^
-- end STATISTICSPROJECTRC_PROJECTS
-- begin STATISTICSPROJECTRC_PROJECT_CONSULTANT
create table STATISTICSPROJECTRC_PROJECT_CONSULTANT
(
    ID         varchar(36) not null,
    VERSION    integer     not null,
    CREATE_TS  timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS  timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS  timestamp,
    DELETED_BY varchar(50),
    --
    PROJECT_ID varchar(36) not null,
    --
    primary key (ID)
) ^
-- end STATISTICSPROJECTRC_PROJECT_CONSULTANT
-- begin STATISTICSPROJECTRC_COSTS
create table STATISTICSPROJECTRC_COSTS
(
    ID         varchar(36) not null,
    VERSION    integer     not null,
    CREATE_TS  timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS  timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS  timestamp,
    DELETED_BY varchar(50),
    --
    COST       integer     not null,
    --
    primary key (ID)
) ^
-- end STATISTICSPROJECTRC_COSTS

-- begin STATISTICSPROJECTRC_DURATIONS
create table STATISTICSPROJECTRC_DURATIONS
(
    ID         varchar(36)      not null,
    VERSION    integer          not null,
    CREATE_TS  timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS  timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS  timestamp,
    DELETED_BY varchar(50),
    --
    DURATION   double precision not null,
    --
    primary key (ID)
) ^
-- end STATISTICSPROJECTRC_DURATIONS
-- begin STATISTICSPROJECTRC_FORM_DURATION_COST
create table STATISTICSPROJECTRC_FORM_DURATION_COST
(
    ID          varchar(36) not null,
    VERSION     integer     not null,
    CREATE_TS   timestamp,
    CREATED_BY  varchar(50),
    UPDATE_TS   timestamp,
    UPDATED_BY  varchar(50),
    DELETE_TS   timestamp,
    DELETED_BY  varchar(50),
    --
    FORM_ID     varchar(36) not null,
    DURATION_ID varchar(36) not null,
    COST_ID     varchar(36) not null,
    --
    primary key (ID)
) ^
-- end STATISTICSPROJECTRC_FORM_DURATION_COST
-- begin STATISTICSPROJECTRC_FORMSERVICE
create table STATISTICSPROJECTRC_FORMSERVICE
(
    ID                varchar(36)  not null,
    VERSION           integer      not null,
    CREATE_TS         timestamp,
    CREATED_BY        varchar(50),
    UPDATE_TS         timestamp,
    UPDATED_BY        varchar(50),
    DELETE_TS         timestamp,
    DELETED_BY        varchar(50),
    --
    NAME_FORM_SERVICE varchar(255) not null,
    --
    primary key (ID)
) ^
-- end STATISTICSPROJECTRC_FORMSERVICE
-- begin STATISTICSPROJECTRC_SECTIONS
create table STATISTICSPROJECTRC_SECTIONS
(
    ID           varchar(36)  not null,
    VERSION      integer      not null,
    CREATE_TS    timestamp,
    CREATED_BY   varchar(50),
    UPDATE_TS    timestamp,
    UPDATED_BY   varchar(50),
    DELETE_TS    timestamp,
    DELETED_BY   varchar(50),
    --
    NAME_SECTION varchar(255) not null,
    --
    primary key (ID)
) ^
-- end STATISTICSPROJECTRC_SECTIONS
-- begin STATISTICSPROJECTRC_SECTION_CONSULTANT
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
) ^
-- end STATISTICSPROJECTRC_SECTION_CONSULTANT
