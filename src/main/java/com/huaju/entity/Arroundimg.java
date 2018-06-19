package com.huaju.entity;

public class Arroundimg {
    private Integer arrid;

    private String arrimg;

    private Integer buildingid;

    private Build build;

    @Override
    public String toString() {
        return "Arroundimg{" +
                "arrid=" + arrid +
                ", arrimg='" + arrimg + '\'' +
                ", buildingid=" + buildingid +
                ", build=" + build +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Arroundimg that = (Arroundimg) o;

        if (arrid != null ? !arrid.equals(that.arrid) : that.arrid != null) return false;
        if (arrimg != null ? !arrimg.equals(that.arrimg) : that.arrimg != null) return false;
        if (buildingid != null ? !buildingid.equals(that.buildingid) : that.buildingid != null) return false;
        return build != null ? build.equals(that.build) : that.build == null;
    }

    @Override
    public int hashCode() {
        int result = arrid != null ? arrid.hashCode() : 0;
        result = 31 * result + (arrimg != null ? arrimg.hashCode() : 0);
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

    public Integer getArrid() {
        return arrid;
    }

    public void setArrid(Integer arrid) {
        this.arrid = arrid;
    }

    public String getArrimg() {
        return arrimg;
    }

    public void setArrimg(String arrimg) {
        this.arrimg = arrimg == null ? null : arrimg.trim();
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }
}