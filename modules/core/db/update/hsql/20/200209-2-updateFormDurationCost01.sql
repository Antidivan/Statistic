alter table STATISTICSPROJECTRC_FORM_DURATION_COST
    add constraint FK_STATISTICSPROJECTRC_FORM_DURATION_COST_ON_FORM foreign key (FORM_ID) references STATISTICSPROJECTRC_FORMSERVICE (ID);
create index IDX_STATISTICSPROJECTRC_FORM_DURATION_COST_ON_FORM on STATISTICSPROJECTRC_FORM_DURATION_COST (FORM_ID);