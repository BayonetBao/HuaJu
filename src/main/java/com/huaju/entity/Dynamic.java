package com.huaju.entity;

import java.util.Date;

public class Dynamic {
    private Integer dynamicid;

    private Date dytime;

    private Integer buildingid;

    private String dytitle;

    private String dcontent;

    public Integer getDynamicid() {
        return dynamicid;
    }

    public void setDynamicid(Integer dynamicid) {
        this.dynamicid = dynamicid;
    }

    public Date getDytime() {
        return dytime;
    }

    public void setDytime(Date dytime) {
        this.dytime = dytime;
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }

    public String getDytitle() {
        return dytitle;
    }

    public void setDytitle(String dytitle) {
        this.dytitle = dytitle == null ? null : dytitle.trim();
    }

    public String getDcontent() {
        return dcontent;
    }

    public void setDcontent(String dcontent) {
        this.dcontent = dcontent == null ? null : dcontent.trim();
    }
}