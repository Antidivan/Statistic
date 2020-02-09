alter table STATISTICSPROJECTRC_PROJECTS
    add column DATE_START date ^
update STATISTICSPROJECTRC_PROJECTS
set DATE_START = current_date
where DATE_START is null;
alter table STATISTICSPROJECTRC_PROJECTS
    alter column DATE_START set not null;
-- alter table STATISTICSPROJECTRC_PROJECTS add column NAME_PROJECT varchar(255) ^
-- update STATISTICSPROJECTRC_PROJECTS set NAME_PROJECT = <default_value> ;
-- alter table STATISTICSPROJECTRC_PROJECTS alter column NAME_PROJECT set not null ;
alter table STATISTICSPROJECTRC_PROJECTS
    add column NAME_PROJECT varchar(255);
