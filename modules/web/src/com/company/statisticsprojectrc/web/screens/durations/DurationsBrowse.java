package com.company.statisticsprojectrc.web.screens.durations;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Duration;

@UiController("statisticsprojectrc_Durations.browse")
@UiDescriptor("durations-browse.xml")
@LookupComponent("durationsTable")
@LoadDataBeforeShow
public class DurationsBrowse extends StandardLookup<Duration> {
}