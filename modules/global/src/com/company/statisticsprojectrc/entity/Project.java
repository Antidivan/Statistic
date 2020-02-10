package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "STATISTICSPROJECTRC_PROJECT")
@Entity(name = "statisticsprojectrc_Project")
public class Project extends StandardEntity {
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