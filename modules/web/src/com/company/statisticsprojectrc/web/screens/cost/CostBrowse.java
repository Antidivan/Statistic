package com.company.statisticsprojectrc.web.screens.cost;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Cost;

@UiController("statisticsprojectrc_Cost.browse")
@UiDescriptor("cost-browse.xml")
@LookupComponent("costsTable")
@LoadDataBeforeShow
public class CostBrowse extends StandardLookup<Cost> {
}