package com.company.statisticsprojectrc.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@NamePattern("%s|siteName")
@Table(name = "STATISTICSPROJECTRC_SITES")
@Entity(name = "statisticsprojectrc_Sites")
public class Sites extends StandardEntity {
    private static final long serialVersionUID = -6633490290721750512L;

    @NotNull
    @Column(name = "SITE_NAME", nullable = false, unique = true)
    protected String siteName;

    @NotNull
    @Column(name = "SITE_REGION", nullable = false, unique = true)
    protected String siteRegion;

    @Pattern(regexp = "^https://*.*")
    @NotNull
    @Column(name = "URL_SITE", nullable = false, unique = true)
    protected String urlSite;

    public String getUrlSite() {
        return urlSite;
    }

    public void setUrlSite(String urlSite) {
        this.urlSite = urlSite;
    }

    public String getSiteRegion() {
        return siteRegion;
    }

    public void setSiteRegion(String siteRegion) {
        this.siteRegion = siteRegion;
    }

    public String getSiteName() {
        return siteName;
    }

    public void setSiteName(String siteName) {
        this.siteName = siteName;
    }
}