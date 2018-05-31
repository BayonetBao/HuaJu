package com.huaju.entity;

public class Arroundimg {
    private Integer arrid;

    private String arrimg;

    private Integer buildingid;

    public Integer getArrid() {
        return arrid;
    }

    public void setArrid(Integer arrid) {
        this.arrid = arrid;
    }

    public String getArrimg() {
        return arrimg;
    }

    public void setArrimg(String arrimg) {
        this.arrimg = arrimg == null ? null : arrimg.trim();
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }
}