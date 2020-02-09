alter table STATISTICSPROJECTRC_ORDERS
    alter column PRODUCT rename to PRODUCT__U44591 ^
alter table STATISTICSPROJECTRC_ORDERS
    alter column PRODUCT__U44591 set null;
-- alter table STATISTICSPROJECTRC_ORDERS add column PRODUCT_ID varchar(36) ^
-- update STATISTICSPROJECTRC_ORDERS set PRODUCT_ID = <default_value> ;
-- alter table STATISTICSPROJECTRC_ORDERS alter column PRODUCT_ID set not null ;
alter table STATISTICSPROJECTRC_ORDERS
    add column PRODUCT_ID varchar(36) not null;
