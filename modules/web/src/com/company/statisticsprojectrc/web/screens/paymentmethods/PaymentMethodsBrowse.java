package com.company.statisticsprojectrc.web.screens.paymentmethods;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.PaymentMethods;

@UiController("statisticsprojectrc_PaymentMethods.browse")
@UiDescriptor("payment-methods-browse.xml")
@LookupComponent("paymentMethodsesTable")
@LoadDataBeforeShow
public class PaymentMethodsBrowse extends StandardLookup<PaymentMethods> {
}