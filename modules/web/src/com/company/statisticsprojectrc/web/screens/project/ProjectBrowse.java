package com.company.statisticsprojectrc.web.screens.project;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Project;

@UiController("statisticsprojectrc_Project.browse")
@UiDescriptor("project-browse.xml")
@LookupComponent("projectsTable")
@LoadDataBeforeShow
public class ProjectBrowse extends StandardLookup<Project> {
}