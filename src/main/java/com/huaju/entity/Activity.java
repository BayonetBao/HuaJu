package com.huaju.entity;

import java.util.Date;

public class Activity {
    private Integer actid;

    private Date actime;

    private Integer ctaid;

    private Integer buildingid;

    private Integer totalnum;

    private Integer parnum;

    public Integer getActid() {
        return actid;
    }

    public void setActid(Integer actid) {
        this.actid = actid;
    }

    public Date getActime() {
        return actime;
    }

    public void setActime(Date actime) {
        this.actime = actime;
    }

    public Integer getCtaid() {
        return ctaid;
    }

    public void setCtaid(Integer ctaid) {
        this.ctaid = ctaid;
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }

    public Integer getTotalnum() {
        return totalnum;
    }

    public void setTotalnum(Integer totalnum) {
        this.totalnum = totalnum;
    }

    public Integer getParnum() {
        return parnum;
    }

    public void setParnum(Integer parnum) {
        this.parnum = parnum;
    }
}