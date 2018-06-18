package com.huaju.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class House {
    private Integer houseid;

    private String hname;

    private Double hmoney;

    private String htypeimg;

    private Double hperprice;

    private Date updatename;

    private String forward;

    private Double harea;

    private String htype;

    private String hsalestatus;

    private Double payment;

    private Double monthpay;

    private Integer doorid;


    private Integer butypeid;

    private String analysis;
//一对一
    private Door door;//房型表
    private BuildType buildType;//楼户表
    private  Type type;//户型表

    public House() {
    }

    public Door getDoor() {
        return door;
    }

    public void setDoor(Door door) {
        this.door = door;
    }

    public BuildType getBuildType() {
        return buildType;
    }

    public void setBuildType(BuildType buildType) {
        this.buildType = buildType;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public Integer getHouseid() {
        return houseid;
    }

    public void setHouseid(Integer houseid) {
        this.houseid = houseid;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname == null ? null : hname.trim();
    }

    public Double getHmoney() {
        return hmoney;
    }

    public void setHmoney(Double hmoney) {
        this.hmoney = hmoney;
    }

    public String getHtypeimg() {
        return htypeimg;
    }

    public void setHtypeimg(String htypeimg) {
        this.htypeimg = htypeimg == null ? null : htypeimg.trim();
    }

    public Double getHperprice() {
        return hperprice;
    }

    public void setHperprice(Double hperprice) {
        this.hperprice = hperprice;
    }

    public Date getUpdatename() {
        return updatename;
    }

    public void setUpdatename(Date updatename) {
        this.updatename = updatename;
    }

    public String getForward() {
        return forward;
    }

    public void setForward(String forward) {
        this.forward = forward == null ? null : forward.trim();
    }

    public Double getHarea() {
        return harea;
    }

    public void setHarea(Double harea) {
        this.harea = harea;
    }

    public String getHtype() {
        return htype;
    }

    public void setHtype(String htype) {
        this.htype = htype == null ? null : htype.trim();
    }

    public String getHsalestatus() {
        return hsalestatus;
    }

    public void setHsalestatus(String hsalestatus) {
        this.hsalestatus = hsalestatus == null ? null : hsalestatus.trim();
    }

    public Double getPayment() {
        return payment;
    }

    public void setPayment(Double payment) {
        this.payment = payment;
    }

    public Double getMonthpay() {
        return monthpay;
    }

    public void setMonthpay(Double monthpay) {
        this.monthpay = monthpay;
    }

    public Integer getDoorid() {
        return doorid;
    }

    public void setDoorid(Integer doorid) {
        this.doorid = doorid;
    }

    public Integer getButypeid() {
        return butypeid;
    }

    public void setButypeid(Integer butypeid) {
        this.butypeid = butypeid;
    }

    public String getAnalysis() {
        return analysis;
    }

    public void setAnalysis(String analysis) {
        this.analysis = analysis == null ? null : analysis.trim();
    }

    @Override
    public String toString() {
        return "House{" +
                "houseid=" + houseid +
                ", hname='" + hname + '\'' +
                ", hmoney=" + hmoney +
                ", htypeimg='" + htypeimg + '\'' +
                ", hperprice=" + hperprice +
                ", updatename=" + updatename +
                ", forward='" + forward + '\'' +
                ", harea=" + harea +
                ", htype='" + htype + '\'' +
                ", hsalestatus='" + hsalestatus + '\'' +
                ", payment=" + payment +
                ", monthpay=" + monthpay +
                ", doorid=" + doorid +
                ", butypeid=" + butypeid +
                ", analysis='" + analysis + '\'' +
                ", door=" + door +
                ", buildType=" + buildType +
                ", type=" + type +
                '}';
    }
}