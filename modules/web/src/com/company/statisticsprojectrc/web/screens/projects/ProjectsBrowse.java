package com.company.statisticsprojectrc.web.screens.projects;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Projects;

@UiController("statisticsprojectrc_Projects.browse")
@UiDescriptor("projects-browse.xml")
@LookupComponent("projectsesTable")
@LoadDataBeforeShow
public class ProjectsBrowse extends StandardLookup<Projects> {
}