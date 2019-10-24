package com.bdqn.pojo.travel;

import java.util.Date;

public class travelmessage {
    private Integer travelid;

    private String travelname;

    private Date checkin;

    private Date checkout;

    private Double price;

    private Double discount;
/*供应商*/
    private String supplier;
/*地区ID*/
    private Integer areaid;
/*景点ID*/
    private Integer attractionsid;

    private Integer typeid;
/*图片*/
    private String picture;

    private String outpicture;
  /*  国家*/
    private String country;
/*   旅游类型*/
    private String traveltype;
/*    出发地*/
    private String TFrom;
/*    天数*/
    private String TDay;
/*    月份*/
    private String Mouth;
/*    经度*/
    private Integer AttractionLONG;
  /*  纬度*/
    private Integer AttractionLAT;
  /* 介绍*/
private String Introduce;
/*    班次*/
    private String Shifts;
    /*点评数*/
   private Integer CommentCount;
   /* 旅游人数*/
    private Integer TravelCount;
    /*评分*/
    private Integer Score;
    

    public travelmessage(Integer travelid, String travelname, Date checkin, Date checkout, Double price, Double discount, String supplier, Integer areaid, Integer attractionsid, Integer typeid, String picture, String outpicture,String country,String traveltype,String TFrom,String TDay,String Mouth,Integer AttractionLONG,Integer AttractionLAT,String Introduce,String Shifts,Integer CommentCount,Integer TravelCount,Integer Score) {
        this.travelid = travelid;
        this.travelname = travelname;
        this.checkin = checkin;
        this.checkout = checkout;
        this.price = price;
        this.discount = discount;
        this.supplier = supplier;
        this.areaid = areaid;
        this.attractionsid = attractionsid;
        this.typeid = typeid;
        this.picture = picture;
        this.outpicture = outpicture;
        this.country = country;
        this.traveltype = traveltype;
        this.TFrom = TFrom;
        this.TDay = TDay;
        this.Mouth = Mouth;
        this.AttractionLONG = AttractionLONG;
        this.AttractionLAT = AttractionLAT;
        this.Introduce = Introduce;
        this.Shifts = Shifts;
        this.CommentCount = CommentCount;
        this.TravelCount = TravelCount;
        this.Score = Score;
    }

    public travelmessage() {
        super();
    }

    public Integer getTravelid() {
        return travelid;
    }

    public void setTravelid(Integer travelid) {
        this.travelid = travelid;
    }

    public String getTravelname() {
        return travelname;
    }

    public void setTravelname(String travelname) {
        this.travelname = travelname == null ? null : travelname.trim();
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

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier == null ? null : supplier.trim();
    }

    public Integer getAreaid() {
        return areaid;
    }

    public void setAreaid(Integer areaid) {
        this.areaid = areaid;
    }

    public Integer getAttractionsid() {
        return attractionsid;
    }

    public void setAttractionsid(Integer attractionsid) {
        this.attractionsid = attractionsid;
    }

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture == null ? null : picture.trim();
    }

    public String getOutpicture() {
        return outpicture;
    }

    public void setOutpicture(String outpicture) {
        this.outpicture = outpicture == null ? null : outpicture.trim();
    }
    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country == null ? null : country.trim();
    }
    public String getTravelType() {
        return traveltype;
    }

    public void setTravelType(String traveltype) {
    	this.traveltype = traveltype == null ? null : traveltype.trim();
    }
    public String getTFrom() {
        return TFrom;
    }

    public void setTFrom(String TFrom) {
    	this.TFrom = TFrom == null ? null : TFrom.trim();
    }
    public String getTDay() {
        return TDay;
    }

    public void setTDay(String TDay) {
    	this.TDay = TDay == null ? null : TDay.trim();
    }
    public String getMouth() {
        return Mouth;
    }

    public void setMouth(String Mouth) {
    	this.Mouth = Mouth == null ? null : Mouth.trim();
    }
    
    public Integer getAttractionLONG() {
        return AttractionLONG;
    }

    public void setAttractionLONG(Integer AttractionLONG) {
        this.AttractionLONG = AttractionLONG;
    }
    
    public Integer getAttractionLAT() {
        return AttractionLAT;
    }

    public void setAttractionLAT(Integer AttractionLAT) {
        this.AttractionLAT = AttractionLAT;
    }
    public String getIntroduce() {
        return Introduce;
    }

    public void setIntroduce(String Introduce) {
    	this.Introduce = Introduce == null ? null : Introduce.trim();
    }
    public String getShifts() {
        return Shifts;
    }

    public void setShifts(String Shifts) {
    	this.Shifts = Shifts == null ? null : Shifts.trim();
    }
    public Integer getCommentCount() {
        return CommentCount;
    }

    public void setCommentCount(Integer CommentCount) {
        this.CommentCount = CommentCount;
    }
    public Integer getTravelCount() {
        return TravelCount;
    }

    public void setTravelCount(Integer TravelCount) {
        this.TravelCount = TravelCount;
    }
    public Integer getScore() {
        return Score;
    }

    public void setScore(Integer Score) {
        this.Score = Score;
    }
}