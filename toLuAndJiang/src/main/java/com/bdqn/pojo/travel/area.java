package com.bdqn.pojo.travel;

public class area {
    private Integer areaid;

    private String area;

    private Integer countryid;

    private Integer arealong;

    private Integer arealat;

    private String tfrom;

    public area(Integer areaid, String area, Integer countryid, Integer arealong, Integer arealat, String tfrom) {
        this.areaid = areaid;
        this.area = area;
        this.countryid = countryid;
        this.arealong = arealong;
        this.arealat = arealat;
        this.tfrom = tfrom;
    }

    public area() {
        super();
    }

    public Integer getAreaid() {
        return areaid;
    }

    public void setAreaid(Integer areaid) {
        this.areaid = areaid;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area == null ? null : area.trim();
    }

    public Integer getCountryid() {
        return countryid;
    }

    public void setCountryid(Integer countryid) {
        this.countryid = countryid;
    }

    public Integer getArealong() {
        return arealong;
    }

    public void setArealong(Integer arealong) {
        this.arealong = arealong;
    }

    public Integer getArealat() {
        return arealat;
    }

    public void setArealat(Integer arealat) {
        this.arealat = arealat;
    }

    public String getTfrom() {
        return tfrom;
    }

    public void setTfrom(String tfrom) {
        this.tfrom = tfrom == null ? null : tfrom.trim();
    }
}