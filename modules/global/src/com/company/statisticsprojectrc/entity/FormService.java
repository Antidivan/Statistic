package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Table(name = "STATISTICSPROJECTRC_FORMSERVICE")
@Entity(name = "statisticsprojectrc_FormService")
public class FormService extends StandardEntity {
    private static final long serialVersionUID = 5183051253343419979L;

    @NotNull
    @Column(name = "NAME_FORM_SERVICE", nullable = false, unique = true)
    protected String nameFormService;

    @Temporal(TemporalType.DATE)
    @NotNull
    @Column(name = "DATE_START_SERVICE", nullable = false)
    protected Date dateStartService;

    public Date getDateStartService() {
        return dateStartService;
    }

    public void setDateStartService(Date dateStartService) {
        this.dateStartService = dateStartService;
    }

    public String getNameFormService() {
        return nameFormService;
    }

    public void setNameFormService(String nameFormService) {
        this.nameFormService = nameFormService;
    }
}