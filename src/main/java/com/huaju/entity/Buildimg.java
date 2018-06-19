package com.huaju.entity;

public class Buildimg {
    private Integer buimgid;

    private String buildimg;

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

        Buildimg buildimg1 = (Buildimg) o;

        if (buimgid != null ? !buimgid.equals(buildimg1.buimgid) : buildimg1.buimgid != null) return false;
        if (buildimg != null ? !buildimg.equals(buildimg1.buildimg) : buildimg1.buildimg != null) return false;
        if (buildingid != null ? !buildingid.equals(buildimg1.buildingid) : buildimg1.buildingid != null) return false;
        return build != null ? build.equals(buildimg1.build) : buildimg1.build == null;
    }

    @Override
    public int hashCode() {
        int result = buimgid != null ? buimgid.hashCode() : 0;
        result = 31 * result + (buildimg != null ? buildimg.hashCode() : 0);
        result = 31 * result + (buildingid != null ? buildingid.hashCode() : 0);
        result = 31 * result + (build != null ? build.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Buildimg{" +
                "buimgid=" + buimgid +
                ", buildimg='" + buildimg + '\'' +
                ", buildingid=" + buildingid +
                ", build=" + build +
                '}';
    }

    public Integer getBuimgid() {
        return buimgid;
    }

    public void setBuimgid(Integer buimgid) {
        this.buimgid = buimgid;
    }

    public String getBuildimg() {
        return buildimg;
    }

    public void setBuildimg(String buildimg) {
        this.buildimg = buildimg == null ? null : buildimg.trim();
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }
}