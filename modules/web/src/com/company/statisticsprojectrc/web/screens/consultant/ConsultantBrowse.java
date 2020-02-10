package com.company.statisticsprojectrc.web.screens.consultant;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Consultant;

@UiController("statisticsprojectrc_Consultant.browse")
@UiDescriptor("consultant-browse.xml")
@LookupComponent("consultantsTable")
@LoadDataBeforeShow
public class ConsultantBrowse extends StandardLookup<Consultant> {
}