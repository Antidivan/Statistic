package com.company.statisticsprojectrc.web.screens.wsite;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.WSite;

@UiController("statisticsprojectrc_WSite.edit")
@UiDescriptor("w-site-edit.xml")
@EditedEntityContainer("wSiteDc")
@LoadDataBeforeShow
public class WSiteEdit extends StandardEditor<WSite> {
}