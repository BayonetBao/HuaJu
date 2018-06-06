package com.huaju.entity;

public class DynamicQueryPojo {
    private Integer comid=null;//开发商id
    private Integer buildingid=null;

    public DynamicQueryPojo() {
        super();
    }

    public Integer getComid() {
        return comid;
    }

    public void setComid(Integer comid) {
        this.comid = comid;
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }

    public DynamicQueryPojo(Integer comid, Integer buildingid) {
        this.comid = comid;
        this.buildingid = buildingid;
    }
}
