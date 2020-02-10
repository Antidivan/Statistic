package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.Lookup;
import com.haulmont.cuba.core.entity.annotation.LookupType;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

@Table(name = "STATISTICSPROJECTRC_CONSULTANTS")
@Entity(name = "statisticsprojectrc_Consultants")
public class Consultant extends StandardEntity {
    private static final long serialVersionUID = -3996728477146518417L;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @NotNull
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "USER_ID")
    protected User user;

    @NotNull
    @Column(name = "FULL_NAME_CONSULTANT", nullable = false, unique = true)
    protected String fullNameConsultant;

    @Email
    @NotNull
    @Column(name = "EMAIL_WORK", nullable = false, unique = true)
    protected String emailWork;

    public void setFullNameConsultant(String fullNameConsultant) {
        this.fullNameConsultant = fullNameConsultant;
    }

    public String getFullNameConsultant() {
        return fullNameConsultant;
    }

    public String getEmailWork() {
        return emailWork;
    }

    public void setEmailWork(String emailWork) {
        this.emailWork = emailWork;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }

}