package com.company.statisticsprojectrc.web.screens.wsite;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.WSite;

@UiController("statisticsprojectrc_WSite.browse")
@UiDescriptor("w-site-browse.xml")
@LookupComponent("wSitesTable")
@LoadDataBeforeShow
public class WSiteBrowse extends StandardLookup<WSite> {
}