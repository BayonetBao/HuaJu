package com.huaju.entity;

public class ProtoTypeImg {
    private Integer proid;

    private String prototype;

    private Integer buildingid;

    public Integer getProid() {
        return proid;
    }

    public void setProid(Integer proid) {
        this.proid = proid;
    }

    public String getPrototype() {
        return prototype;
    }

    public void setPrototype(String prototype) {
        this.prototype = prototype == null ? null : prototype.trim();
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }
}