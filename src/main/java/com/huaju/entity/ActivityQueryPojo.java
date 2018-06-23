package com.huaju.entity;


public class ActivityQueryPojo {
    private Integer comid=null;//开发商id
    private Integer buildingid=null;
    private Integer ctaid=null;
    private Integer actid=null;

    public Integer getActid() {
        return actid;
    }

    public void setActid(Integer actid) {
        this.actid = actid;
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

    public Integer getCtaid() {
        return ctaid;
    }

    public void setCtaid(Integer ctaid) {
        this.ctaid = ctaid;
    }
}
