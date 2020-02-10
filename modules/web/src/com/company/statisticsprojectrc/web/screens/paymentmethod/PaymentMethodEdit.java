package com.company.statisticsprojectrc.web.screens.paymentmethod;

import com.haulmont.cuba.gui.screen.*;
import com.company.statisticsprojectrc.entity.PaymentMethod;

@UiController("statisticsprojectrc_PaymentMethod.edit")
@UiDescriptor("payment-method-edit.xml")
@EditedEntityContainer("paymentMethodDc")
@LoadDataBeforeShow
public class PaymentMethodEdit extends StandardEditor<PaymentMethod> {
}