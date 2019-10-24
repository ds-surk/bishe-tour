package com.bdqn.pojo.flight;

public class OrderState {
    private Integer id;

    private String typecode;

    private String typename;

    private Integer valueid;

    private String statetype;

    public OrderState(Integer id, String typecode, String typename, Integer valueid, String statetype) {
        this.id = id;
        this.typecode = typecode;
        this.typename = typename;
        this.valueid = valueid;
        this.statetype = statetype;
    }

    public OrderState() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypecode() {
        return typecode;
    }

    public void setTypecode(String typecode) {
        this.typecode = typecode == null ? null : typecode.trim();
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename == null ? null : typename.trim();
    }

    public Integer getValueid() {
        return valueid;
    }

    public void setValueid(Integer valueid) {
        this.valueid = valueid;
    }

    public String getStatetype() {
        return statetype;
    }

    public void setStatetype(String statetype) {
        this.statetype = statetype == null ? null : statetype.trim();
    }
}