package com.company.statisticsprojectrc.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.Lookup;
import com.haulmont.cuba.core.entity.annotation.LookupType;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@NamePattern("Product")
@Table(name = "STATISTICSPROJECTRC_FORM_DURATION_COST")
@Entity(name = "statisticsprojectrc_Form_Duration_Cost")
public class Form_Duration_Cost extends StandardEntity {
    private static final long serialVersionUID = 7212756569611560698L;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "FORM_ID")
    protected FormService form;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "DURATION_ID")
    protected Durations duration;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "COST_ID")
    protected Costs cost;

    public void setForm(FormService form) {
        this.form = form;
    }

    public FormService getForm() {
        return form;
    }

    public Costs getCost() {
        return cost;
    }

    public void setCost(Costs cost) {
        this.cost = cost;
    }

    public Durations getDuration() {
        return duration;
    }

    public void setDuration(Durations duration) {
        this.duration = duration;
    }

}