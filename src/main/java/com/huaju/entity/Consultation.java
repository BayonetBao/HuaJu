package com.huaju.entity;

public class Consultation {
    private Integer conid;

    private String conphone;

    private Integer ctaid;

    private Integer userid;

    public Integer getConid() {
        return conid;
    }

    public void setConid(Integer conid) {
        this.conid = conid;
    }

    public String getConphone() {
        return conphone;
    }

    public void setConphone(String conphone) {
        this.conphone = conphone == null ? null : conphone.trim();
    }

    public Integer getCtaid() {
        return ctaid;
    }

    public void setCtaid(Integer ctaid) {
        this.ctaid = ctaid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}