package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.Lookup;
import com.haulmont.cuba.core.entity.annotation.LookupType;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "STATISTICSPROJECTRC_PROJECT_CONSULTANT")
@Entity(name = "statisticsprojectrc_Project_Consultant")
public class Project_Section extends StandardEntity {
    private static final long serialVersionUID = 5210695172957137472L;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "PROJECT_ID")
    protected Projects project;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "SECTION_ID")
    protected SectionService section;

    public SectionService getSection() {
        return section;
    }

    public void setSection(SectionService section) {
        this.section = section;
    }

    public Projects getProject() {
        return project;
    }

    public void setProject(Projects project) {
        this.project = project;
    }
}