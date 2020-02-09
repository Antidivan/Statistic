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
);