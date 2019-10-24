package com.bdqn.pojo.shopping;

public class User {
    private Integer id;

    private Integer uid;

    private String uname;

    private String name;

    private String password;

    private Integer paypassword;

    private String email;

    private String phone;

    private String idnumber;

    private String address;

    private Double money;

    public User(Integer id, Integer uid, String uname, String name, String password, Integer paypassword, String email, String phone, String idnumber, String address, Double money) {
        this.id = id;
        this.uid = uid;
        this.uname = uname;
        this.name = name;
        this.password = password;
        this.paypassword = paypassword;
        this.email = email;
        this.phone = phone;
        this.idnumber = idnumber;
        this.address = address;
        this.money = money;
    }

    public User() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getPaypassword() {
        return paypassword;
    }

    public void setPaypassword(Integer paypassword) {
        this.paypassword = paypassword;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber == null ? null : idnumber.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }
}