package com.huaju.entity;

public class EnvironmentImg {
    private Integer envirid;

    private String envirimg;

    private Integer buildingid;

    public Integer getEnvirid() {
        return envirid;
    }

    public void setEnvirid(Integer envirid) {
        this.envirid = envirid;
    }

    public String getEnvirimg() {
        return envirimg;
    }

    public void setEnvirimg(String envirimg) {
        this.envirimg = envirimg == null ? null : envirimg.trim();
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }
}