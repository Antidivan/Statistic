alter table STATISTICSPROJECTRC_SECTION_CONSULTANT add constraint FK_STATISTICSPROJECTRC_SECTION_CONSULTANT_ON_CONSULTANT foreign key (CONSULTANT_ID) references STATISTICSPROJECTRC_CONSULTANT(ID);
