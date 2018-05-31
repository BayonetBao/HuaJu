package com.huaju.entity;

public class Entry {
    private Integer entid;

    private Integer actid;

    private Integer userid;

    private String entphone;

    private String entnote;

    public Integer getEntid() {
        return entid;
    }

    public void setEntid(Integer entid) {
        this.entid = entid;
    }

    public Integer getActid() {
        return actid;
    }

    public void setActid(Integer actid) {
        this.actid = actid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getEntphone() {
        return entphone;
    }

    public void setEntphone(String entphone) {
        this.entphone = entphone == null ? null : entphone.trim();
    }

    public String getEntnote() {
        return entnote;
    }

    public void setEntnote(String entnote) {
        this.entnote = entnote == null ? null : entnote.trim();
    }
}