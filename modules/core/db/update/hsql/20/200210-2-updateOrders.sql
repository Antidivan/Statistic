-- alter table STATISTICSPROJECTRC_ORDERS add column SECTION_ID varchar(36) ^
-- update STATISTICSPROJECTRC_ORDERS set SECTION_ID = <default_value> ;
-- alter table STATISTICSPROJECTRC_ORDERS alter column SECTION_ID set not null ;
alter table STATISTICSPROJECTRC_ORDERS add column SECTION_ID varchar(36) not null ;
