package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;

@Table(name = "STATISTICSPROJECTRC_DURATIONS")
@Entity(name = "statisticsprojectrc_Durations")
public class Duration extends StandardEntity {
    private static final long serialVersionUID = 3498581483024703981L;

    @Positive
    @NotNull
    @Column(name = "DURATION", nullable = false, unique = true)
    protected Double duration;

    public Double getDuration() {
        return duration;
    }

    public void setDuration(Double duration) {
        this.duration = duration;
    }
}