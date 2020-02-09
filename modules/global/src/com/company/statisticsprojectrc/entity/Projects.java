package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Table(name = "STATISTICSPROJECTRC_PROJECTS")
@Entity(name = "statisticsprojectrc_Projects")
public class Projects extends StandardEntity {
    private static final long serialVersionUID = 6295772187401026039L;

    @NotNull
    @Column(name = "NAME_PROJECT", nullable = false, unique = true)
    protected String nameProject;

    @Temporal(TemporalType.DATE)
    @NotNull
    @Column(name = "DATE_START", nullable = false)
    protected Date dateStart;

    public Date getDateStart() {
        return dateStart;
    }

    public void setDateStart(Date dateStart) {
        this.dateStart = dateStart;
    }

    public String getNameProject() {
        return nameProject;
    }

    public void setNameProject(String nameProject) {
        this.nameProject = nameProject;
    }
}