package com.company.statisticsprojectrc.web.screens.project;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Project;

@UiController("statisticsprojectrc_Project.edit")
@UiDescriptor("project-edit.xml")
@EditedEntityContainer("projectDc")
@LoadDataBeforeShow
public class ProjectEdit extends StandardEditor<Project> {
}