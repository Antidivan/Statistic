package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.PositiveOrZero;
import java.util.Date;

@Table(name = "STATISTICSPROJECTRC_USERS")
@Entity(name = "statisticsprojectrc_USERS")
public class Users extends StandardEntity {
    private static final long serialVersionUID = -1270483272467825534L;

    @NotNull
    @Column(name = "USER", nullable = false)
    protected Integer user;

    @Email
    @NotNull
    @Column(name = "EMAIL_USER", nullable = false)
    protected String email_user;

    @PositiveOrZero
    @Column(name = "LOYALITY")
    protected Integer loyality;

    @Past
    @Temporal(TemporalType.DATE)
    @Column(name = "BIRTHDAY")
    protected Date birthday;

    @Temporal(TemporalType.DATE)
    @Past
    @Column(name = "first_meeting")
    protected Date first_meeting;

    public Date getFirst_meeting() {
        return first_meeting;
    }

    public void setFirst_meeting(Date first_meeting) {
        this.first_meeting = first_meeting;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getLoyality() {
        return loyality;
    }

    public void setLoyality(Integer loyality) {
        this.loyality = loyality;
    }

    public String getEmail_user() {
        return email_user;
    }

    public void setEmail_user(String email_user) {
        this.email_user = email_user;
    }

    public Integer getUser() {
        return user;
    }

    public void setUser(Integer user) {
        this.user = user;
    }
}