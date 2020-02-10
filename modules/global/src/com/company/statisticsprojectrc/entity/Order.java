package com.company.statisticsprojectrc.entity;

import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.Lookup;
import com.haulmont.cuba.core.entity.annotation.LookupType;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import javax.validation.constraints.PositiveOrZero;
import java.util.Date;

@Table(name = "STATISTICSPROJECTRC_ORDER")
@Entity(name = "statisticsprojectrc_ORDER")
public class Order extends StandardEntity {
    private static final long serialVersionUID = 8841246679704730837L;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "SITE_ORDER_ID")
    protected WSite siteOrder;

    @NotNull
    @Column(name = "NUMBER_ORDER", nullable = false)
    protected String numberOrder;

    @Temporal(TemporalType.TIMESTAMP)
    @NotNull
    @Column(name = "DATE_CREATE", nullable = false)
    protected Date dateCreate;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "DATE_SALE")
    protected Date dateSale;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "PAYMENT_METHOD_ID")
    protected PaymentMethod paymentMethod;

    @PositiveOrZero
    @NotNull
    @Column(name = "COST_FINAL", nullable = false)
    protected Double costFinal;

    @Positive
    @NotNull
    @Column(name = "COST_ORDER", nullable = false)
    protected Double costOrder;

    @NotNull
    @Column(name = "PAID", nullable = false)
    protected Boolean paid = false;

    @NotNull
    @Column(name = "CANCELED", nullable = false)
    protected Boolean canceled = false;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "SECTION_ID")
    protected Section section;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "PRODUCT_ID")
    protected Product product;

    @Lookup(type = LookupType.DROPDOWN)
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "CONSULTANT_ID")
    protected Consultant consultant;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "CUSTOMER_ID")
    protected Customer customer;

    @Temporal(TemporalType.DATE)
    @Column(name = "DATE_ESTIMATED")
    protected Date dateEstimated;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup"})
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "LOCALITY_ID")
    protected Locality townOrder;

    public Section getSection() {
        return section;
    }

    public void setSection(Section section) {
        this.section = section;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Product getProduct() {
        return product;
    }

    public void setConsultant(Consultant consultant) {
        this.consultant = consultant;
    }

    public Consultant getConsultant() {
        return consultant;
    }

    public Date getDateEstimated() {
        return dateEstimated;
    }

    public void setDateEstimated(Date dateEstimated) {
        this.dateEstimated = dateEstimated;
    }

    public void setNumberOrder(String numberOrder) {
        this.numberOrder = numberOrder;
    }

    public String getNumberOrder() {
        return numberOrder;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Customer getCustomer() {
        return customer;
    }

    public Boolean getCanceled() {
        return canceled;
    }

    public void setCanceled(Boolean canceled) {
        this.canceled = canceled;
    }

    public Boolean getPaid() {
        return paid;
    }

    public void setPaid(Boolean paid) {
        this.paid = paid;
    }

    public Double getCostOrder() {
        return costOrder;
    }

    public void setCostOrder(Double costOrder) {
        this.costOrder = costOrder;
    }

    public Double getCostFinal() {
        return costFinal;
    }

    public void setCostFinal(Double costFinal) {
        this.costFinal = costFinal;
    }

    public PaymentMethod getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(PaymentMethod paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public Date getDateSale() {
        return dateSale;
    }

    public void setDateSale(Date dateSale) {
        this.dateSale = dateSale;
    }

    public Date getDateCreate() {
        return dateCreate;
    }

    public void setDateCreate(Date dateCreate) {
        this.dateCreate = dateCreate;
    }

    public WSite getSiteOrder() {
        return siteOrder;
    }

    public void setSiteOrder(WSite siteOrder) {
        this.siteOrder = siteOrder;
    }

    public void setTownOrder(Locality townOrder) {
        this.townOrder = townOrder;
    }

    public Locality getTownOrder() {
        return townOrder;
    }

}