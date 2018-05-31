package com.huaju.entity;

import java.util.Date;

public class Company {
    private Integer comid;

    private String comname;

    private Double cmoney;

    private String cphone;

    private Date ctime;

    private String caddress;

    private String clicense;

    private String construction;

    private String landuse;

    private String permit;

    private String presale;

    private String implement;

    private String quality;

    private String instruction;

    public Integer getComid() {
        return comid;
    }

    public void setComid(Integer comid) {
        this.comid = comid;
    }

    public String getComname() {
        return comname;
    }

    public void setComname(String comname) {
        this.comname = comname == null ? null : comname.trim();
    }

    public Double getCmoney() {
        return cmoney;
    }

    public void setCmoney(Double cmoney) {
        this.cmoney = cmoney;
    }

    public String getCphone() {
        return cphone;
    }

    public void setCphone(String cphone) {
        this.cphone = cphone == null ? null : cphone.trim();
    }

    public Date getCtime() {
        return ctime;
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }

    public String getCaddress() {
        return caddress;
    }

    public void setCaddress(String caddress) {
        this.caddress = caddress == null ? null : caddress.trim();
    }

    public String getClicense() {
        return clicense;
    }

    public void setClicense(String clicense) {
        this.clicense = clicense == null ? null : clicense.trim();
    }

    public String getConstruction() {
        return construction;
    }

    public void setConstruction(String construction) {
        this.construction = construction == null ? null : construction.trim();
    }

    public String getLanduse() {
        return landuse;
    }

    public void setLanduse(String landuse) {
        this.landuse = landuse == null ? null : landuse.trim();
    }

    public String getPermit() {
        return permit;
    }

    public void setPermit(String permit) {
        this.permit = permit == null ? null : permit.trim();
    }

    public String getPresale() {
        return presale;
    }

    public void setPresale(String presale) {
        this.presale = presale == null ? null : presale.trim();
    }

    public String getImplement() {
        return implement;
    }

    public void setImplement(String implement) {
        this.implement = implement == null ? null : implement.trim();
    }

    public String getQuality() {
        return quality;
    }

    public void setQuality(String quality) {
        this.quality = quality == null ? null : quality.trim();
    }

    public String getInstruction() {
        return instruction;
    }

    public void setInstruction(String instruction) {
        this.instruction = instruction == null ? null : instruction.trim();
    }
}