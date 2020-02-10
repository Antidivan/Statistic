package com.company.statisticsprojectrc.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.Lookup;
import com.haulmont.cuba.core.entity.annotation.LookupType;

import javax.persistence.*;

@NamePattern("%s %s %s|last_name,first_name,patronymic")
@Table(name = "STATISTICSPROJECTRC_CUSTOMERS")
@Entity(name = "statisticsprojectrc_Customers")
public class Customer extends StandardEntity {
    private static final long serialVersionUID = 8796328327481488057L;

    @Column(name = "SURNAME", length = 63)
    protected String last_name;

    @Column(name = "FIRST_NAME", length = 63)
    protected String first_name;

    @Column(name = "PATRONYMIC", length = 63)
    protected String patronymic;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TOWN_CU_ID")
    protected Locality townCu;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "USER_ID")
    protected User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Locality getTownCu() {
        return townCu;
    }

    public void setTownCu(Locality townCu) {
        this.townCu = townCu;
    }

    public String getPatronymic() {
        return patronymic;
    }

    public void setPatronymic(String patronymic) {
        this.patronymic = patronymic;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }
}