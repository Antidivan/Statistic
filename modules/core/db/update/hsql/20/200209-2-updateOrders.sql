alter table STATISTICSPROJECTRC_ORDERS
    alter column ID_CONSULTANT rename to ID_CONSULTANT__U38755 ^
alter table STATISTICSPROJECTRC_ORDERS
    alter column ID_PRODUCT rename to ID_PRODUCT__U40313 ^
alter table STATISTICSPROJECTRC_ORDERS
    alter column ID_PRODUCT__U40313 set null;
alter table STATISTICSPROJECTRC_ORDERS
    add column PRODUCT integer ^
update STATISTICSPROJECTRC_ORDERS
set PRODUCT = 0
where PRODUCT is null;
alter table STATISTICSPROJECTRC_ORDERS
    alter column PRODUCT set not null;
alter table STATISTICSPROJECTRC_ORDERS
    add column CONSULTANT integer ^
update STATISTICSPROJECTRC_ORDERS
set CONSULTANT = 0
where CONSULTANT is null;
alter table STATISTICSPROJECTRC_ORDERS
    alter column CONSULTANT set not null;
