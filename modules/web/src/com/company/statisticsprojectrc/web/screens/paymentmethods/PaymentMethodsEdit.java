package com.company.statisticsprojectrc.web.screens.paymentmethods;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.PaymentMethods;

@UiController("statisticsprojectrc_PaymentMethods.edit")
@UiDescriptor("payment-methods-edit.xml")
@EditedEntityContainer("paymentMethodsDc")
@LoadDataBeforeShow
public class PaymentMethodsEdit extends StandardEditor<PaymentMethods> {
}