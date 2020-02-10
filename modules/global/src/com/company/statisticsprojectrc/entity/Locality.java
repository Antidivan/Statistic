package com.company.statisticsprojectrc.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@NamePattern("%s %s|town,country")
@Table(name = "STATISTICSPROJECTRC_LOCALITY")
@Entity(name = "statisticsprojectrc_LOCALITY")
public class Locality extends StandardEntity {
    private static final long serialVersionUID = 8193271901033764487L;

    @NotNull
    @Column(name = "TOWN", nullable = false)
    protected String town;

    @Column(name = "COUNTRY")
    protected String country;

    public String getTown() {
        return town;
    }

    public void setTown(String town) {
        this.town = town;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

}