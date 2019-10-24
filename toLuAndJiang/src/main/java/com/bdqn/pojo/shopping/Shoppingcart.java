package com.bdqn.pojo.shopping;

import java.util.Date;

public class Shoppingcart {
    private Integer shoppingnumber;

    private Integer uid;

    private Integer shoppingtype;

    private Double price;

    private Date createdtime;

    private Integer shoppingstate;

    private Integer hotelnumber;

    private Integer ticketnumber;

    private Integer travelnumber;

    public Shoppingcart(Integer shoppingnumber, Integer uid, Integer shoppingtype, Double price, Date createdtime, Integer shoppingstate, Integer hotelnumber, Integer ticketnumber, Integer travelnumber) {
        this.shoppingnumber = shoppingnumber;
        this.uid = uid;
        this.shoppingtype = shoppingtype;
        this.price = price;
        this.createdtime = createdtime;
        this.shoppingstate = shoppingstate;
        this.hotelnumber = hotelnumber;
        this.ticketnumber = ticketnumber;
        this.travelnumber = travelnumber;
    }

    public Shoppingcart() {
        super();
    }

    public Integer getShoppingnumber() {
        return shoppingnumber;
    }

    public void setShoppingnumber(Integer shoppingnumber) {
        this.shoppingnumber = shoppingnumber;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getShoppingtype() {
        return shoppingtype;
    }

    public void setShoppingtype(Integer shoppingtype) {
        this.shoppingtype = shoppingtype;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Date getCreatedtime() {
        return createdtime;
    }

    public void setCreatedtime(Date createdtime) {
        this.createdtime = createdtime;
    }

    public Integer getShoppingstate() {
        return shoppingstate;
    }

    public void setShoppingstate(Integer shoppingstate) {
        this.shoppingstate = shoppingstate;
    }

    public Integer getHotelnumber() {
        return hotelnumber;
    }

    public void setHotelnumber(Integer hotelnumber) {
        this.hotelnumber = hotelnumber;
    }

    public Integer getTicketnumber() {
        return ticketnumber;
    }

    public void setTicketnumber(Integer ticketnumber) {
        this.ticketnumber = ticketnumber;
    }

    public Integer getTravelnumber() {
        return travelnumber;
    }

    public void setTravelnumber(Integer travelnumber) {
        this.travelnumber = travelnumber;
    }
}