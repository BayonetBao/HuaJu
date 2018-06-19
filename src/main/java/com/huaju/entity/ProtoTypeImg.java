package com.huaju.entity;

public class ProtoTypeImg {
    private Integer proid;

    private String prototype;

    private Integer buildingid;
    private Build build;

    @Override
    public String toString() {
        return "ProtoTypeImg{" +
                "proid=" + proid +
                ", prototype='" + prototype + '\'' +
                ", buildingid=" + buildingid +
                ", build=" + build +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ProtoTypeImg that = (ProtoTypeImg) o;

        if (proid != null ? !proid.equals(that.proid) : that.proid != null) return false;
        if (prototype != null ? !prototype.equals(that.prototype) : that.prototype != null) return false;
        if (buildingid != null ? !buildingid.equals(that.buildingid) : that.buildingid != null) return false;
        return build != null ? build.equals(that.build) : that.build == null;
    }

    @Override
    public int hashCode() {
        int result = proid != null ? proid.hashCode() : 0;
        result = 31 * result + (prototype != null ? prototype.hashCode() : 0);
        result = 31 * result + (buildingid != null ? buildingid.hashCode() : 0);
        result = 31 * result + (build != null ? build.hashCode() : 0);
        return result;
    }

    public Build getBuild() {

        return build;
    }

    public void setBuild(Build build) {
        this.build = build;
    }

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