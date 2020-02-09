alter table STATISTICSPROJECTRC_ORDERS
    alter column CONSULTANT rename to CONSULTANT__U31573 ^
alter table STATISTICSPROJECTRC_ORDERS
    alter column CONSULTANT__U31573 set null;
-- alter table STATISTICSPROJECTRC_ORDERS add column CONSULTANT_ID varchar(36) ^
-- update STATISTICSPROJECTRC_ORDERS set CONSULTANT_ID = <default_value> ;
-- alter table STATISTICSPROJECTRC_ORDERS alter column CONSULTANT_ID set not null ;
alter table STATISTICSPROJECTRC_ORDERS
    add column CONSULTANT_ID varchar(36) not null;
