alter table STATISTICSPROJECTRC_ORDER add constraint FK_STATISTICSPROJECTRC_ORDER_ON_SITE_ORDER foreign key (SITE_ORDER_ID) references STATISTICSPROJECTRC_WSITE(ID);
alter table STATISTICSPROJECTRC_ORDER add constraint FK_STATISTICSPROJECTRC_ORDER_ON_PAYMENT_METHOD foreign key (PAYMENT_METHOD_ID) references STATISTICSPROJECTRC_PAYMENT_METHOD(ID);
alter table STATISTICSPROJECTRC_ORDER add constraint FK_STATISTICSPROJECTRC_ORDER_ON_SECTION foreign key (SECTION_ID) references STATISTICSPROJECTRC_SECTION(ID);
alter table STATISTICSPROJECTRC_ORDER add constraint FK_STATISTICSPROJECTRC_ORDER_ON_PRODUCT foreign key (PRODUCT_ID) references STATISTICSPROJECTRC_PRODUCT(ID);
alter table STATISTICSPROJECTRC_ORDER add constraint FK_STATISTICSPROJECTRC_ORDER_ON_CONSULTANT foreign key (CONSULTANT_ID) references STATISTICSPROJECTRC_CONSULTANT(ID);
alter table STATISTICSPROJECTRC_ORDER add constraint FK_STATISTICSPROJECTRC_ORDER_ON_CUSTOMER foreign key (CUSTOMER_ID) references STATISTICSPROJECTRC_CUSTOMER(ID);
alter table STATISTICSPROJECTRC_ORDER add constraint FK_STATISTICSPROJECTRC_ORDER_ON_LOCALITY foreign key (LOCALITY_ID) references STATISTICSPROJECTRC_LOCALITY(ID);
create index IDX_STATISTICSPROJECTRC_ORDER_ON_SITE_ORDER on STATISTICSPROJECTRC_ORDER (SITE_ORDER_ID);
create index IDX_STATISTICSPROJECTRC_ORDER_ON_PAYMENT_METHOD on STATISTICSPROJECTRC_ORDER (PAYMENT_METHOD_ID);
create index IDX_STATISTICSPROJECTRC_ORDER_ON_SECTION on STATISTICSPROJECTRC_ORDER (SECTION_ID);
create index IDX_STATISTICSPROJECTRC_ORDER_ON_PRODUCT on STATISTICSPROJECTRC_ORDER (PRODUCT_ID);
create index IDX_STATISTICSPROJECTRC_ORDER_ON_CONSULTANT on STATISTICSPROJECTRC_ORDER (CONSULTANT_ID);
create index IDX_STATISTICSPROJECTRC_ORDER_ON_CUSTOMER on STATISTICSPROJECTRC_ORDER (CUSTOMER_ID);
create index IDX_STATISTICSPROJECTRC_ORDER_ON_LOCALITY on STATISTICSPROJECTRC_ORDER (LOCALITY_ID);
