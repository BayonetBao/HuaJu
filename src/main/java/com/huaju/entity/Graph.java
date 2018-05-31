package com.huaju.entity;

public class Graph {
    private Integer graphid;

    private String graphurl;

    private Integer buildingid;

    public Integer getGraphid() {
        return graphid;
    }

    public void setGraphid(Integer graphid) {
        this.graphid = graphid;
    }

    public String getGraphurl() {
        return graphurl;
    }

    public void setGraphurl(String graphurl) {
        this.graphurl = graphurl == null ? null : graphurl.trim();
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }
}