alter table STATISTICSPROJECTRC_SECTIONS add column DATE_START date ^
update STATISTICSPROJECTRC_SECTIONS set DATE_START = current_date where DATE_START is null ;
alter table STATISTICSPROJECTRC_SECTIONS alter column DATE_START set not null ;
