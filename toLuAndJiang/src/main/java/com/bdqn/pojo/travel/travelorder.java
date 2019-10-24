package com.bdqn.pojo.travel;

import java.util.Date;

public class travelorder {
    private Integer travelnumber;

    private Integer travelid;

    private Date createdtime;

    private Integer uid;

    private Integer count;

    private Double discount;

    private Double price;

    private Double sumprice;

    public travelorder(Integer travelnumber, Integer travelid, Date createdtime, Integer uid, Integer count, Double discount, Double price, Double sumprice) {
        this.travelnumber = travelnumber;
        this.travelid = travelid;
        this.createdtime = createdtime;
        this.uid = uid;
        this.count = count;
        this.discount = discount;
        this.price = price;
        this.sumprice = sumprice;
    }

    public travelorder() {
        super();
    }

    public Integer getTravelnumber() {
        return travelnumber;
    }

    public void setTravelnumber(Integer travelnumber) {
        this.travelnumber = travelnumber;
    }

    public Integer getTravelid() {
        return travelid;
    }

    public void setTravelid(Integer travelid) {
        this.travelid = travelid;
    }

    public Date getCreatedtime() {
        return createdtime;
    }

    public void setCreatedtime(Date createdtime) {
        this.createdtime = createdtime;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getSumprice() {
        return sumprice;
    }

    public void setSumprice(Double sumprice) {
        this.sumprice = sumprice;
    }
}