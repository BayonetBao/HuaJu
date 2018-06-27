package com.huaju.entity;

import java.util.Date;

public class Appointment {
    private Integer appid;

    private Integer buildingid;

    private Integer userid;

    private Date apptime;

    private String apphone;

    private String appnote;
    private String sex;
    private String urealname;

    @Override
    public String toString() {
        return "Appointment{" +
                "appid=" + appid +
                ", buildingid=" + buildingid +
                ", userid=" + userid +
                ", apptime=" + apptime +
                ", apphone='" + apphone + '\'' +
                ", appnote='" + appnote + '\'' +
                ", sex='" + sex + '\'' +
                ", urealname='" + urealname + '\'' +
                '}';
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getUrealname() {
        return urealname;
    }

    public void setUrealname(String urealname) {
        this.urealname = urealname;
    }

    public Integer getAppid() {
        return appid;
    }

    public void setAppid(Integer appid) {
        this.appid = appid;
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Date getApptime() {
        return apptime;
    }

    public void setApptime(Date apptime) {
        this.apptime = apptime;
    }

    public String getApphone() {
        return apphone;
    }

    public void setApphone(String apphone) {
        this.apphone = apphone == null ? null : apphone.trim();
    }

    public String getAppnote() {
        return appnote;
    }

    public void setAppnote(String appnote) {
        this.appnote = appnote == null ? null : appnote.trim();
    }
}