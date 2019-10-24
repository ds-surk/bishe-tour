package com.bdqn.pojo.flight;

import java.util.Date;

public class SpecialTicket {
    private Integer flightid;

    private String flightnumber;

    private Integer companyid;

    private String chufacompany;

    private String daodacompany;

    private String airtype;

    private String seatid;

    private Date begintime;

    private String chufatime;

    private String daodatime;

    private String totaltime;

    private String begincity;

    private String transferscity;

    private String destination;

    private String roundtype;

    private Double zhundian;

    private Double discount;

    private String price;

    public SpecialTicket(Integer flightid, String flightnumber, Integer companyid, String chufacompany, String daodacompany, String airtype, String seatid, Date begintime, String chufatime, String daodatime, String totaltime, String begincity, String transferscity, String destination, String roundtype, Double zhundian, Double discount, String price) {
        this.flightid = flightid;
        this.flightnumber = flightnumber;
        this.companyid = companyid;
        this.chufacompany = chufacompany;
        this.daodacompany = daodacompany;
        this.airtype = airtype;
        this.seatid = seatid;
        this.begintime = begintime;
        this.chufatime = chufatime;
        this.daodatime = daodatime;
        this.totaltime = totaltime;
        this.begincity = begincity;
        this.transferscity = transferscity;
        this.destination = destination;
        this.roundtype = roundtype;
        this.zhundian = zhundian;
        this.discount = discount;
        this.price = price;
    }

    public SpecialTicket() {
        super();
    }

    public Integer getFlightid() {
        return flightid;
    }

    public void setFlightid(Integer flightid) {
        this.flightid = flightid;
    }

    public String getFlightnumber() {
        return flightnumber;
    }

    public void setFlightnumber(String flightnumber) {
        this.flightnumber = flightnumber == null ? null : flightnumber.trim();
    }

    public Integer getCompanyid() {
        return companyid;
    }

    public void setCompanyid(Integer companyid) {
        this.companyid = companyid;
    }

    public String getChufacompany() {
        return chufacompany;
    }

    public void setChufacompany(String chufacompany) {
        this.chufacompany = chufacompany == null ? null : chufacompany.trim();
    }

    public String getDaodacompany() {
        return daodacompany;
    }

    public void setDaodacompany(String daodacompany) {
        this.daodacompany = daodacompany == null ? null : daodacompany.trim();
    }

    public String getAirtype() {
        return airtype;
    }

    public void setAirtype(String airtype) {
        this.airtype = airtype == null ? null : airtype.trim();
    }

    public String getSeatid() {
        return seatid;
    }

    public void setSeatid(String seatid) {
        this.seatid = seatid == null ? null : seatid.trim();
    }

    public Date getBegintime() {
        return begintime;
    }

    public void setBegintime(Date begintime) {
        this.begintime = begintime;
    }

    public String getChufatime() {
        return chufatime;
    }

    public void setChufatime(String chufatime) {
        this.chufatime = chufatime == null ? null : chufatime.trim();
    }

    public String getDaodatime() {
        return daodatime;
    }

    public void setDaodatime(String daodatime) {
        this.daodatime = daodatime == null ? null : daodatime.trim();
    }

    public String getTotaltime() {
        return totaltime;
    }

    public void setTotaltime(String totaltime) {
        this.totaltime = totaltime == null ? null : totaltime.trim();
    }

    public String getBegincity() {
        return begincity;
    }

    public void setBegincity(String begincity) {
        this.begincity = begincity == null ? null : begincity.trim();
    }

    public String getTransferscity() {
        return transferscity;
    }

    public void setTransferscity(String transferscity) {
        this.transferscity = transferscity == null ? null : transferscity.trim();
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination == null ? null : destination.trim();
    }

    public String getRoundtype() {
        return roundtype;
    }

    public void setRoundtype(String roundtype) {
        this.roundtype = roundtype == null ? null : roundtype.trim();
    }

    public Double getZhundian() {
        return zhundian;
    }

    public void setZhundian(Double zhundian) {
        this.zhundian = zhundian;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price == null ? null : price.trim();
    }
}