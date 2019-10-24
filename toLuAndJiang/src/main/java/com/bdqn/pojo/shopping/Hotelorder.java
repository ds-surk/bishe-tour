package com.bdqn.pojo.shopping;

import java.util.Date;

public class Hotelorder {
    private Integer hotelnumber;

    private Integer hotelid;

    private Date checkin;

    private Date checkout;

    private Date createdtime;

    private Integer uid;

    public Hotelorder(Integer hotelnumber, Integer hotelid, Date checkin, Date checkout, Date createdtime, Integer uid) {
        this.hotelnumber = hotelnumber;
        this.hotelid = hotelid;
        this.checkin = checkin;
        this.checkout = checkout;
        this.createdtime = createdtime;
        this.uid = uid;
    }

    public Hotelorder() {
        super();
    }

    public Integer getHotelnumber() {
        return hotelnumber;
    }

    public void setHotelnumber(Integer hotelnumber) {
        this.hotelnumber = hotelnumber;
    }

    public Integer getHotelid() {
        return hotelid;
    }

    public void setHotelid(Integer hotelid) {
        this.hotelid = hotelid;
    }

    public Date getCheckin() {
        return checkin;
    }

    public void setCheckin(Date checkin) {
        this.checkin = checkin;
    }

    public Date getCheckout() {
        return checkout;
    }

    public void setCheckout(Date checkout) {
        this.checkout = checkout;
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
}