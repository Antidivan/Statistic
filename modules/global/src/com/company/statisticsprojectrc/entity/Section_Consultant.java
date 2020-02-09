package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.Lookup;
import com.haulmont.cuba.core.entity.annotation.LookupType;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "STATISTICSPROJECTRC_SECTION_CONSULTANT")
@Entity(name = "statisticsprojectrc_Section_Consultant")
public class Section_Consultant extends StandardEntity {
    private static final long serialVersionUID = -7617717759780660237L;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "SECTION_ID")
    protected Sections section;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "CONSULTANT_ID")
    protected Consultants consultant;

    @NotNull
    @Column(name = "GRADUATION", nullable = false)
    protected String graduation;

    public String getGraduation() {
        return graduation;
    }

    public void setGraduation(String graduation) {
        this.graduation = graduation;
    }

    public Consultants getConsultant() {
        return consultant;
    }

    public void setConsultant(Consultants consultant) {
        this.consultant = consultant;
    }

    public Sections getSection() {
        return section;
    }

    public void setSection(Sections section) {
        this.section = section;
    }
}