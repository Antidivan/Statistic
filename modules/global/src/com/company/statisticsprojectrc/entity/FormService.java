package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "STATISTICSPROJECTRC_FORMSERVICE")
@Entity(name = "statisticsprojectrc_FormService")
public class FormService extends StandardEntity {
    private static final long serialVersionUID = 5183051253343419979L;

    @NotNull
    @Column(name = "NAME_FORM_SERVICE", nullable = false, unique = true)
    protected String nameFormService;

    public String getNameFormService() {
        return nameFormService;
    }

    public void setNameFormService(String nameFormService) {
        this.nameFormService = nameFormService;
    }
}