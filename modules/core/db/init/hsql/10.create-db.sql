-- begin STATISTICSPROJECTRC_ORDER
create table STATISTICSPROJECTRC_ORDER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    SITE_ORDER_ID varchar(36) not null,
    NUMBER_ORDER varchar(255) not null,
    DATE_CREATE timestamp not null,
    DATE_SALE timestamp,
    PAYMENT_METHOD_ID varchar(36) not null,
    COST_FINAL double precision not null,
    COST_ORDER double precision not null,
    PAID boolean not null,
    CANCELED boolean not null,
    SECTION_ID varchar(36) not null,
    PRODUCT_ID varchar(36) not null,
    CONSULTANT_ID varchar(36) not null,
    CUSTOMER_ID varchar(36) not null,
    DATE_ESTIMATED date,
    LOCALITY_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end STATISTICSPROJECTRC_ORDER
-- begin STATISTICSPROJECTRC_PRODUCT
create table STATISTICSPROJECTRC_PRODUCT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    FORM_ID varchar(36) not null,
    DURATION_ID varchar(36) not null,
    COST_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end STATISTICSPROJECTRC_PRODUCT
-- begin STATISTICSPROJECTRC_CONSULTANT
create table STATISTICSPROJECTRC_CONSULTANT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USER_ID varchar(36) not null,
    FULL_NAME_CONSULTANT varchar(255) not null,
    EMAIL_WORK varchar(255) not null,
    --
    primary key (ID)
)^
-- end STATISTICSPROJECTRC_CONSULTANT
-- begin STATISTICSPROJECTRC_SECTION
create table STATISTICSPROJECTRC_SECTION (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME_SECTION varchar(255) not null,
    DATE_START date not null,
    --
    primary key (ID)
)^
-- end STATISTICSPROJECTRC_SECTION
-- begin STATISTICSPROJECTRC_COST
create table STATISTICSPROJECTRC_COST (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    COST integer not null,
    --
    primary key (ID)
)^
-- end STATISTICSPROJECTRC_COST
-- begin STATISTICSPROJECTRC_SECTION_CONSULTANT
create table STATISTICSPROJECTRC_SECTION_CONSULTANT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    SECTION_ID varchar(36) not null,
    CONSULTANT_ID varchar(36) not null,
    GRADUATION varchar(255) not null,
    --
    primary key (ID)
)^
-- end STATISTICSPROJECTRC_SECTION_CONSULTANT
-- begin STATISTICSPROJECTRC_LOCALITY
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
)^
-- end STATISTICSPROJECTRC_LOCALITY
-- begin STATISTICSPROJECTRC_USER
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
)^
-- end STATISTICSPROJECTRC_USER
-- begin STATISTICSPROJECTRC_FORMSERVICE
create table STATISTICSPROJECTRC_FORMSERVICE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME_FORM_SERVICE varchar(255) not null,
    DATE_START_SERVICE date not null,
    --
    primary key (ID)
)^
-- end STATISTICSPROJECTRC_FORMSERVICE
-- begin STATISTICSPROJECTRC_PROJECT
create table STATISTICSPROJECTRC_PROJECT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME_PROJECT varchar(255) not null,
    --
    primary key (ID)
)^
-- end STATISTICSPROJECTRC_PROJECT
-- begin STATISTICSPROJECTRC_PAYMENT_METHOD
create table STATISTICSPROJECTRC_PAYMENT_METHOD (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME_METHOD varchar(255) not null,
    --
    primary key (ID)
)^
-- end STATISTICSPROJECTRC_PAYMENT_METHOD
-- begin STATISTICSPROJECTRC_CUSTOMER
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
)^
-- end STATISTICSPROJECTRC_CUSTOMER
-- begin STATISTICSPROJECTRC_DURATION
create table STATISTICSPROJECTRC_DURATION (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    DURATION double precision not null,
    --
    primary key (ID)
)^
-- end STATISTICSPROJECTRC_DURATION
-- begin STATISTICSPROJECTRC_WSITE
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
)^
-- end STATISTICSPROJECTRC_WSITE
