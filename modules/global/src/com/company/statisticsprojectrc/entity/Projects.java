package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "STATISTICSPROJECTRC_PROJECTS")
@Entity(name = "statisticsprojectrc_Projects")
public class Projects extends StandardEntity {
    private static final long serialVersionUID = 6295772187401026039L;

    @NotNull
    @Column(name = "NAME_PROJECT", nullable = false, unique = true)
    protected String nameProject;

    public String getNameProject() {
        return nameProject;
    }

    public void setNameProject(String nameProject) {
        this.nameProject = nameProject;
    }
}