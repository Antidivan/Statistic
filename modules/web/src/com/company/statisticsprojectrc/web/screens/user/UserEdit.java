package com.company.statisticsprojectrc.web.screens.user;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.User;

@UiController("statisticsprojectrc_USER.edit")
@UiDescriptor("user-edit.xml")
@EditedEntityContainer("userDc")
@LoadDataBeforeShow
public class UserEdit extends StandardEditor<User> {
}