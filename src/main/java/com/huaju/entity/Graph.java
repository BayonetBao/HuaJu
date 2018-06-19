package com.huaju.entity;

public class Graph {
    private Integer graphid;

    private String graphurl;

    private Integer buildingid;
    private Build build;

    public Build getBuild() {
        return build;
    }

    public void setBuild(Build build) {
        this.build = build;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Graph graph = (Graph) o;

        if (graphid != null ? !graphid.equals(graph.graphid) : graph.graphid != null) return false;
        if (graphurl != null ? !graphurl.equals(graph.graphurl) : graph.graphurl != null) return false;
        if (buildingid != null ? !buildingid.equals(graph.buildingid) : graph.buildingid != null) return false;
        return build != null ? build.equals(graph.build) : graph.build == null;
    }

    @Override
    public int hashCode() {
        int result = graphid != null ? graphid.hashCode() : 0;
        result = 31 * result + (graphurl != null ? graphurl.hashCode() : 0);
        result = 31 * result + (buildingid != null ? buildingid.hashCode() : 0);
        result = 31 * result + (build != null ? build.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Graph{" +
                "graphid=" + graphid +
                ", graphurl='" + graphurl + '\'' +
                ", buildingid=" + buildingid +
                ", build=" + build +
                '}';
    }

    public Graph() {
        super();
    }

    public Graph(Integer graphid, String graphurl, Integer buildingid, Build build) {
        this.graphid = graphid;
        this.graphurl = graphurl;
        this.buildingid = buildingid;
        this.build = build;
    }

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