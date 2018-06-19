package com.huaju.entity;

public class EnvironmentImg {
    private Integer envirid;

    private String envirimg;

    private Integer buildingid;
    private Build build;

    @Override
    public String toString() {
        return "EnvironmentImg{" +
                "envirid=" + envirid +
                ", envirimg='" + envirimg + '\'' +
                ", buildingid=" + buildingid +
                ", build=" + build +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EnvironmentImg that = (EnvironmentImg) o;

        if (envirid != null ? !envirid.equals(that.envirid) : that.envirid != null) return false;
        if (envirimg != null ? !envirimg.equals(that.envirimg) : that.envirimg != null) return false;
        if (buildingid != null ? !buildingid.equals(that.buildingid) : that.buildingid != null) return false;
        return build != null ? build.equals(that.build) : that.build == null;
    }

    @Override
    public int hashCode() {
        int result = envirid != null ? envirid.hashCode() : 0;
        result = 31 * result + (envirimg != null ? envirimg.hashCode() : 0);
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

    public Integer getEnvirid() {
        return envirid;
    }

    public void setEnvirid(Integer envirid) {
        this.envirid = envirid;
    }

    public String getEnvirimg() {
        return envirimg;
    }

    public void setEnvirimg(String envirimg) {
        this.envirimg = envirimg == null ? null : envirimg.trim();
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }
}