package com.huaju.entity;

public class Buildimg {
    private Integer buimgid;

    private String buildimg;

    private Integer buildingid;

    public Integer getBuimgid() {
        return buimgid;
    }

    public void setBuimgid(Integer buimgid) {
        this.buimgid = buimgid;
    }

    public String getBuildimg() {
        return buildimg;
    }

    public void setBuildimg(String buildimg) {
        this.buildimg = buildimg == null ? null : buildimg.trim();
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }
}