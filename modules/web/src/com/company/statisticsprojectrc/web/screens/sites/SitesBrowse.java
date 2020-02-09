package com.company.statisticsprojectrc.web.screens.sites;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Sites;

@UiController("statisticsprojectrc_Sites.browse")
@UiDescriptor("sites-browse.xml")
@LookupComponent("sitesesTable")
@LoadDataBeforeShow
public class SitesBrowse extends StandardLookup<Sites> {
}