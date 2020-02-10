package com.company.statisticsprojectrc.web.screens.sections;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Section;

@UiController("statisticsprojectrc_Sections.browse")
@UiDescriptor("sections-browse.xml")
@LookupComponent("sectionsesTable")
@LoadDataBeforeShow
public class SectionsBrowse extends StandardLookup<Section> {
}