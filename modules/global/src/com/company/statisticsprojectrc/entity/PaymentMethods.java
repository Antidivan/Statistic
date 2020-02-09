package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "STATISTICSPROJECTRC_PAYMENT_METHODS")
@Entity(name = "statisticsprojectrc_PaymentMethods")
public class PaymentMethods extends StandardEntity {
    private static final long serialVersionUID = 1227380538908402600L;

    @NotNull
    @Column(name = "NAME_METHOD", nullable = false, unique = true)
    protected String nameMethod;

    public String getNameMethod() {
        return nameMethod;
    }

    public void setNameMethod(String nameMethod) {
        this.nameMethod = nameMethod;
    }
}