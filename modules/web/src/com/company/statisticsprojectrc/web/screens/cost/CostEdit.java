package com.company.statisticsprojectrc.web.screens.cost;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.Cost;

@UiController("statisticsprojectrc_Cost.edit")
@UiDescriptor("cost-edit.xml")
@EditedEntityContainer("costDc")
@LoadDataBeforeShow
public class CostEdit extends StandardEditor<Cost> {
}