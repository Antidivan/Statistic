package com.company.statisticsprojectrc.web.screens.duration;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Duration;

@UiController("statisticsprojectrc_Duration.edit")
@UiDescriptor("duration-edit.xml")
@EditedEntityContainer("durationDc")
@LoadDataBeforeShow
public class DurationEdit extends StandardEditor<Duration> {
}