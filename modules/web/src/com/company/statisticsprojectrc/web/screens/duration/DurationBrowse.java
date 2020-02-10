package com.company.statisticsprojectrc.web.screens.duration;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Duration;

@UiController("statisticsprojectrc_Duration.browse")
@UiDescriptor("duration-browse.xml")
@LookupComponent("durationsTable")
@LoadDataBeforeShow
public class DurationBrowse extends StandardLookup<Duration> {
}