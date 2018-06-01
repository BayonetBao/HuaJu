package com.huaju.entity;

import java.util.Date;

public class Dynamic {
    private Integer dynamicid;

    private Date dytime;

    private Integer buildingid;

    private String dytitle;

    private String dcontent;

    public Dynamic() {
        super();
    }

    public Dynamic(Date dytime, Integer buildingid, String dytitle, String dcontent) {
        this.dytime = dytime;
        this.buildingid = buildingid;
        this.dytitle = dytitle;
        this.dcontent = dcontent;
    }

    @Override
    public String toString() {
        return "Dynamic{" +
                "dynamicid=" + dynamicid +
                ", dytime=" + dytime +
                ", buildingid=" + buildingid +
                ", dytitle='" + dytitle + '\'' +
                ", dcontent='" + dcontent + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Dynamic dynamic = (Dynamic) o;

        if (dynamicid != null ? !dynamicid.equals(dynamic.dynamicid) : dynamic.dynamicid != null) return false;
        if (dytime != null ? !dytime.equals(dynamic.dytime) : dynamic.dytime != null) return false;
        if (buildingid != null ? !buildingid.equals(dynamic.buildingid) : dynamic.buildingid != null) return false;
        if (dytitle != null ? !dytitle.equals(dynamic.dytitle) : dynamic.dytitle != null) return false;
        return dcontent != null ? dcontent.equals(dynamic.dcontent) : dynamic.dcontent == null;
    }

    @Override
    public int hashCode() {
        int result = dynamicid != null ? dynamicid.hashCode() : 0;
        result = 31 * result + (dytime != null ? dytime.hashCode() : 0);
        result = 31 * result + (buildingid != null ? buildingid.hashCode() : 0);
        result = 31 * result + (dytitle != null ? dytitle.hashCode() : 0);
        result = 31 * result + (dcontent != null ? dcontent.hashCode() : 0);
        return result;
    }

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