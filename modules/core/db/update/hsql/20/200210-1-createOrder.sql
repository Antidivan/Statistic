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
);