package com.company.statisticsprojectrc.web.screens.durations;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Durations;

@UiController("statisticsprojectrc_Durations.browse")
@UiDescriptor("durations-browse.xml")
@LookupComponent("durationsesTable")
@LoadDataBeforeShow
public class DurationsBrowse extends StandardLookup<Durations> {
}