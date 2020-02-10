package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;

@Table(name = "STATISTICSPROJECTRC_COST")
@Entity(name = "statisticsprojectrc_Cost")
public class Cost extends StandardEntity {
    private static final long serialVersionUID = 4400988563429904261L;

    @Positive
    @NotNull
    @Column(name = "COST", nullable = false, unique = true)
    protected Integer cost;

    public Integer getCost() {
        return cost;
    }

    public void setCost(Integer cost) {
        this.cost = cost;
    }
}