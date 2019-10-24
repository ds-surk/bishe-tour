package com.bdqn.pojo.shopping;

import java.util.Date;

public class Ticketorder {
    private Integer ticketnumber;

    private Integer flightid;

    private Date createdtime;

    private String cabin;

    private Double price;

    private Integer uid;

    public Ticketorder(Integer ticketnumber, Integer flightid, Date createdtime, String cabin, Double price, Integer uid) {
        this.ticketnumber = ticketnumber;
        this.flightid = flightid;
        this.createdtime = createdtime;
        this.cabin = cabin;
        this.price = price;
        this.uid = uid;
    }

    public Ticketorder() {
        super();
    }

    public Integer getTicketnumber() {
        return ticketnumber;
    }

    public void setTicketnumber(Integer ticketnumber) {
        this.ticketnumber = ticketnumber;
    }

    public Integer getFlightid() {
        return flightid;
    }

    public void setFlightid(Integer flightid) {
        this.flightid = flightid;
    }

    public Date getCreatedtime() {
        return createdtime;
    }

    public void setCreatedtime(Date createdtime) {
        this.createdtime = createdtime;
    }

    public String getCabin() {
        return cabin;
    }

    public void setCabin(String cabin) {
        this.cabin = cabin == null ? null : cabin.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}