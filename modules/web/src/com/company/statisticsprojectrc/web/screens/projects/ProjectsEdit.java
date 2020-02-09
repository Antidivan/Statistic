package com.company.statisticsprojectrc.web.screens.projects;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Projects;

@UiController("statisticsprojectrc_Projects.edit")
@UiDescriptor("projects-edit.xml")
@EditedEntityContainer("projectsDc")
@LoadDataBeforeShow
public class ProjectsEdit extends StandardEditor<Projects> {
}