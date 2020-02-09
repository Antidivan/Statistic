-- begin STATISTICSPROJECTRC_SITES
create unique index IDX_STATISTICSPROJECTRC_SITES_UNIQ_SITE_REGION on STATISTICSPROJECTRC_SITES (SITE_REGION) ^
create unique index IDX_STATISTICSPROJECTRC_SITES_UNIQ_URL_SITE on STATISTICSPROJECTRC_SITES (URL_SITE) ^
create unique index IDX_STATISTICSPROJECTRC_SITES_UNIQ_SITE_NAME on STATISTICSPROJECTRC_SITES (SITE_NAME) ^
-- end STATISTICSPROJECTRC_SITES
-- begin STATISTICSPROJECTRC_CUSTOMERS
alter table STATISTICSPROJECTRC_CUSTOMERS
    add constraint FK_STATISTICSPROJECTRC_CUSTOMERS_ON_TOWN_CU foreign key (TOWN_CU_ID) references STATISTICSPROJECTRC_TOWNS (ID) ;
alter table STATISTICSPROJECTRC_CUSTOMERS
    add constraint FK_STATISTICSPROJECTRC_CUSTOMERS_ON_USER foreign key (USER_ID) references STATISTICSPROJECTRC_USERS (ID) ;
create index IDX_STATISTICSPROJECTRC_CUSTOMERS_ON_TOWN_CU on STATISTICSPROJECTRC_CUSTOMERS (TOWN_CU_ID) ^
create index IDX_STATISTICSPROJECTRC_CUSTOMERS_ON_USER on STATISTICSPROJECTRC_CUSTOMERS (USER_ID) ^
-- end STATISTICSPROJECTRC_CUSTOMERS
-- begin STATISTICSPROJECTRC_PAYMENT_METHODS
create unique index IDX_STATISTICSPROJECTRC_PAYMENT_METHODS_UNIQ_NAME_METHOD on STATISTICSPROJECTRC_PAYMENT_METHODS (NAME_METHOD) ^
-- end STATISTICSPROJECTRC_PAYMENT_METHODS
-- begin STATISTICSPROJECTRC_ORDERS
alter table STATISTICSPROJECTRC_ORDERS
    add constraint FK_STATISTICSPROJECTRC_ORDERS_ON_SITE_ORDER foreign key (SITE_ORDER_ID) references STATISTICSPROJECTRC_SITES (ID) ^
alter table STATISTICSPROJECTRC_ORDERS
    add constraint FK_STATISTICSPROJECTRC_ORDERS_ON_PAYMENT_METHOD foreign key (PAYMENT_METHOD_ID) references STATISTICSPROJECTRC_PAYMENT_METHODS (ID) ^
alter table STATISTICSPROJECTRC_ORDERS
    add constraint FK_STATISTICSPROJECTRC_ORDERS_ON_PRODUCT foreign key (PRODUCT_ID) references STATISTICSPROJECTRC_FORM_DURATION_COST (ID) ^
alter table STATISTICSPROJECTRC_ORDERS
    add constraint FK_STATISTICSPROJECTRC_ORDERS_ON_CONSULTANT foreign key (CONSULTANT_ID) references STATISTICSPROJECTRC_CONSULTANTS (ID) ^
alter table STATISTICSPROJECTRC_ORDERS
    add constraint FK_STATISTICSPROJECTRC_ORDERS_ON_CUSTOMER foreign key (CUSTOMER_ID) references STATISTICSPROJECTRC_CUSTOMERS (ID) ^
alter table STATISTICSPROJECTRC_ORDERS
    add constraint FK_STATISTICSPROJECTRC_ORDERS_ON_TOWN foreign key (TOWN_ID) references STATISTICSPROJECTRC_TOWNS (ID) ^
create index IDX_STATISTICSPROJECTRC_ORDERS_ON_SITE_ORDER on STATISTICSPROJECTRC_ORDERS (SITE_ORDER_ID) ^
create index IDX_STATISTICSPROJECTRC_ORDERS_ON_PAYMENT_METHOD on STATISTICSPROJECTRC_ORDERS (PAYMENT_METHOD_ID) ^
create index IDX_STATISTICSPROJECTRC_ORDERS_ON_PRODUCT on STATISTICSPROJECTRC_ORDERS (PRODUCT_ID) ^
create index IDX_STATISTICSPROJECTRC_ORDERS_ON_CONSULTANT on STATISTICSPROJECTRC_ORDERS (CONSULTANT_ID) ^
create index IDX_STATISTICSPROJECTRC_ORDERS_ON_CUSTOMER on STATISTICSPROJECTRC_ORDERS (CUSTOMER_ID) ^
create index IDX_STATISTICSPROJECTRC_ORDERS_ON_TOWN on STATISTICSPROJECTRC_ORDERS (TOWN_ID) ^
-- end STATISTICSPROJECTRC_ORDERS
-- begin STATISTICSPROJECTRC_CONSULTANTS
alter table STATISTICSPROJECTRC_CONSULTANTS
    add constraint FK_STATISTICSPROJECTRC_CONSULTANTS_ON_USER foreign key (USER_ID) references STATISTICSPROJECTRC_USERS (ID) ^
create unique index IDX_STATISTICSPROJECTRC_CONSULTANTS_UNIQ_FULL_NAME_CONSULTANT on STATISTICSPROJECTRC_CONSULTANTS (FULL_NAME_CONSULTANT) ^
create unique index IDX_STATISTICSPROJECTRC_CONSULTANTS_UNIQ_EMAIL_WORK on STATISTICSPROJECTRC_CONSULTANTS (EMAIL_WORK) ^
create index IDX_STATISTICSPROJECTRC_CONSULTANTS_ON_USER on STATISTICSPROJECTRC_CONSULTANTS (USER_ID) ^
-- end STATISTICSPROJECTRC_CONSULTANTS
-- begin STATISTICSPROJECTRC_PROJECT_CONSULTANT
alter table STATISTICSPROJECTRC_PROJECT_CONSULTANT
    add constraint FK_STATISTICSPROJECTRC_PROJECT_CONSULTANT_ON_PROJECT foreign key (PROJECT_ID) references STATISTICSPROJECTRC_PROJECTS (ID) ^
create index IDX_STATISTICSPROJECTRC_PROJECT_CONSULTANT_ON_PROJECT on STATISTICSPROJECTRC_PROJECT_CONSULTANT (PROJECT_ID) ^
-- end STATISTICSPROJECTRC_PROJECT_CONSULTANT
-- begin STATISTICSPROJECTRC_COSTS
create unique index IDX_STATISTICSPROJECTRC_COSTS_UNIQ_COST on STATISTICSPROJECTRC_COSTS (COST) ^
-- end STATISTICSPROJECTRC_COSTS

-- begin STATISTICSPROJECTRC_DURATIONS
create unique index IDX_STATISTICSPROJECTRC_DURATIONS_UNIQ_DURATION on STATISTICSPROJECTRC_DURATIONS (DURATION) ^
-- end STATISTICSPROJECTRC_DURATIONS
-- begin STATISTICSPROJECTRC_FORM_DURATION_COST
alter table STATISTICSPROJECTRC_FORM_DURATION_COST
    add constraint FK_STATISTICSPROJECTRC_FORM_DURATION_COST_ON_FORM foreign key (FORM_ID) references STATISTICSPROJECTRC_FORMSERVICE (ID) ^
alter table STATISTICSPROJECTRC_FORM_DURATION_COST
    add constraint FK_STATISTICSPROJECTRC_FORM_DURATION_COST_ON_DURATION foreign key (DURATION_ID) references STATISTICSPROJECTRC_DURATIONS (ID) ^
alter table STATISTICSPROJECTRC_FORM_DURATION_COST
    add constraint FK_STATISTICSPROJECTRC_FORM_DURATION_COST_ON_COST foreign key (COST_ID) references STATISTICSPROJECTRC_COSTS (ID) ^
create index IDX_STATISTICSPROJECTRC_FORM_DURATION_COST_ON_FORM on STATISTICSPROJECTRC_FORM_DURATION_COST (FORM_ID) ^
create index IDX_STATISTICSPROJECTRC_FORM_DURATION_COST_ON_DURATION on STATISTICSPROJECTRC_FORM_DURATION_COST (DURATION_ID) ^
create index IDX_STATISTICSPROJECTRC_FORM_DURATION_COST_ON_COST on STATISTICSPROJECTRC_FORM_DURATION_COST (COST_ID) ^
-- end STATISTICSPROJECTRC_FORM_DURATION_COST
-- begin STATISTICSPROJECTRC_PROJECTS
create unique index IDX_STATISTICSPROJECTRC_PROJECTS_UNIQ_NAME_PROJECT on STATISTICSPROJECTRC_PROJECTS (NAME_PROJECT) ^
-- end STATISTICSPROJECTRC_PROJECTS
-- begin STATISTICSPROJECTRC_FORMSERVICE
create unique index IDX_STATISTICSPROJECTRC_FORMSERVICE_UNIQ_NAME_FORM_SERVICE on STATISTICSPROJECTRC_FORMSERVICE (NAME_FORM_SERVICE) ^
-- end STATISTICSPROJECTRC_FORMSERVICE
-- begin STATISTICSPROJECTRC_SECTIONS
create unique index IDX_STATISTICSPROJECTRC_SECTIONS_UNIQ_NAME_SECTION on STATISTICSPROJECTRC_SECTIONS (NAME_SECTION) ^
-- end STATISTICSPROJECTRC_SECTIONS
-- begin STATISTICSPROJECTRC_SECTION_CONSULTANT
alter table STATISTICSPROJECTRC_SECTION_CONSULTANT
    add constraint FK_STATISTICSPROJECTRC_SECTION_CONSULTANT_ON_SECTION foreign key (SECTION_ID) references STATISTICSPROJECTRC_SECTIONS (ID) ^
alter table STATISTICSPROJECTRC_SECTION_CONSULTANT
    add constraint FK_STATISTICSPROJECTRC_SECTION_CONSULTANT_ON_CONSULTANT foreign key (CONSULTANT_ID) references STATISTICSPROJECTRC_CONSULTANTS (ID) ^
create index IDX_STATISTICSPROJECTRC_SECTION_CONSULTANT_ON_SECTION on STATISTICSPROJECTRC_SECTION_CONSULTANT (SECTION_ID) ^
create index IDX_STATISTICSPROJECTRC_SECTION_CONSULTANT_ON_CONSULTANT on STATISTICSPROJECTRC_SECTION_CONSULTANT (CONSULTANT_ID) ^
-- end STATISTICSPROJECTRC_SECTION_CONSULTANT