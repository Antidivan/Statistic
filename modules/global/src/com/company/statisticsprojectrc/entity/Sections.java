package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import java.util.Date;

@Table(name = "STATISTICSPROJECTRC_SECTIONS")
@Entity(name = "statisticsprojectrc_Sections")
public class Sections extends StandardEntity {
    private static final long serialVersionUID = -2024625829548510967L;

    @NotNull
    @Column(name = "NAME_SECTION", nullable = false, unique = true)
    protected String nameSection;

    @Past
    @Temporal(TemporalType.DATE)
    @NotNull
    @Column(name = "DATE_START", nullable = false)
    protected Date dateStart;

    public void setDateStart(Date dateStart) {
        this.dateStart = dateStart;
    }

    public Date getDateStart() {
        return dateStart;
    }

    public String getNameSection() {
        return nameSection;
    }

    public void setNameSection(String nameSection) {
        this.nameSection = nameSection;
    }
}