package com.company.statisticsprojectrc.web.screens.durations;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Duration;

@UiController("statisticsprojectrc_Durations.edit")
@UiDescriptor("durations-edit.xml")
@EditedEntityContainer("durationsDc")
@LoadDataBeforeShow
public class DurationsEdit extends StandardEditor<Duration> {
}