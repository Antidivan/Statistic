package com.company.statisticsprojectrc.web.screens.consultant;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Consultant;

@UiController("statisticsprojectrc_Consultant.edit")
@UiDescriptor("consultant-edit.xml")
@EditedEntityContainer("consultantDc")
@LoadDataBeforeShow
public class ConsultantEdit extends StandardEditor<Consultant> {
}