package com.huaju.entity;

public class ComidAndBuildName {
    private Integer comid;
    private String building;

    public Integer getComid() {
        return comid;
    }

    public void setComid(Integer comid) {
        this.comid = comid;
    }

    public ComidAndBuildName(Integer comid, String building) {
        this.comid = comid;
        this.building = building;
    }

    public String getBuilding() {

        return building;
    }

    public void setBuilding(String building) {
        this.building = building;
    }

    public ComidAndBuildName() {

    }
}
