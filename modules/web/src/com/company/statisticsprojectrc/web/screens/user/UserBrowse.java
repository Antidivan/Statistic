package com.company.statisticsprojectrc.web.screens.user;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.User;

@UiController("statisticsprojectrc_USER.browse")
@UiDescriptor("user-browse.xml")
@LookupComponent("usersTable")
@LoadDataBeforeShow
public class UserBrowse extends StandardLookup<User> {
}