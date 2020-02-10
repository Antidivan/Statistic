package com.company.statisticsprojectrc.web.screens.sections;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Section;

@UiController("statisticsprojectrc_Sections.edit")
@UiDescriptor("sections-edit.xml")
@EditedEntityContainer("sectionsDc")
@LoadDataBeforeShow
public class SectionsEdit extends StandardEditor<Section> {
}