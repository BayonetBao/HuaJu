package com.huaju.entity;

public class ImgQueryPojo {
    private Integer comid=null;//开发商id
    private Integer buildingid=null;

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

    public ImgQueryPojo() {
        super();
    }

    public ImgQueryPojo(Integer comid, Integer buildingid) {
        this.comid = comid;
        this.buildingid = buildingid;
    }
}
