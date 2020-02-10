package com.company.statisticsprojectrc.web.screens.paymentmethod;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.PaymentMethod;

@UiController("statisticsprojectrc_PaymentMethod.browse")
@UiDescriptor("payment-method-browse.xml")
@LookupComponent("paymentMethodsTable")
@LoadDataBeforeShow
public class PaymentMethodBrowse extends StandardLookup<PaymentMethod> {
}