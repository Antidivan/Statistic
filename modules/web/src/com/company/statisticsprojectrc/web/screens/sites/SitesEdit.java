package com.company.statisticsprojectrc.web.screens.sites;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.WSite;

@UiController("statisticsprojectrc_Sites.edit")
@UiDescriptor("sites-edit.xml")
@EditedEntityContainer("sitesDc")
@LoadDataBeforeShow
public class SitesEdit extends StandardEditor<WSite> {
}