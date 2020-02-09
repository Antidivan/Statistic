package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "STATISTICSPROJECTRC_SECTIONS")
@Entity(name = "statisticsprojectrc_Sections")
public class Sections extends StandardEntity {
    private static final long serialVersionUID = -2024625829548510967L;

    @NotNull
    @Column(name = "NAME_SECTION", nullable = false, unique = true)
    protected String nameSection;

    public String getNameSection() {
        return nameSection;
    }

    public void setNameSection(String nameSection) {
        this.nameSection = nameSection;
    }
}