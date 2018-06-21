package com.huaju.entity;

import java.util.Date;

public class Activity {
    private Integer actid;

    private Date actime;

    private Integer ctaid;

    private Integer buildingid;

    private Integer totalnum;

    private Integer parnum;

    private String actcontent;

    private String actnote;
    private Build build;
    private Cta cta;

    @Override
    public String toString() {
        return "Activity{" +
                "actid=" + actid +
                ", actime=" + actime +
                ", ctaid=" + ctaid +
                ", buildingid=" + buildingid +
                ", totalnum=" + totalnum +
                ", parnum=" + parnum +
                ", actcontent='" + actcontent + '\'' +
                ", actnote='" + actnote + '\'' +
                ", build=" + build +
                ", cta=" + cta +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Activity activity = (Activity) o;

        if (actid != null ? !actid.equals(activity.actid) : activity.actid != null) return false;
        if (actime != null ? !actime.equals(activity.actime) : activity.actime != null) return false;
        if (ctaid != null ? !ctaid.equals(activity.ctaid) : activity.ctaid != null) return false;
        if (buildingid != null ? !buildingid.equals(activity.buildingid) : activity.buildingid != null) return false;
        if (totalnum != null ? !totalnum.equals(activity.totalnum) : activity.totalnum != null) return false;
        if (parnum != null ? !parnum.equals(activity.parnum) : activity.parnum != null) return false;
        if (actcontent != null ? !actcontent.equals(activity.actcontent) : activity.actcontent != null) return false;
        if (actnote != null ? !actnote.equals(activity.actnote) : activity.actnote != null) return false;
        if (build != null ? !build.equals(activity.build) : activity.build != null) return false;
        return cta != null ? cta.equals(activity.cta) : activity.cta == null;
    }

    @Override
    public int hashCode() {
        int result = actid != null ? actid.hashCode() : 0;
        result = 31 * result + (actime != null ? actime.hashCode() : 0);
        result = 31 * result + (ctaid != null ? ctaid.hashCode() : 0);
        result = 31 * result + (buildingid != null ? buildingid.hashCode() : 0);
        result = 31 * result + (totalnum != null ? totalnum.hashCode() : 0);
        result = 31 * result + (parnum != null ? parnum.hashCode() : 0);
        result = 31 * result + (actcontent != null ? actcontent.hashCode() : 0);
        result = 31 * result + (actnote != null ? actnote.hashCode() : 0);
        result = 31 * result + (build != null ? build.hashCode() : 0);
        result = 31 * result + (cta != null ? cta.hashCode() : 0);
        return result;
    }

    public Build getBuild() {
        return build;
    }

    public void setBuild(Build build) {
        this.build = build;
    }

    public Cta getCta() {
        return cta;
    }

    public void setCta(Cta cta) {
        this.cta = cta;
    }

    public String getActcontent() {
        return actcontent;
    }

    public void setActcontent(String actcontent) {
        this.actcontent = actcontent;
    }

    public String getActnote() {
        return actnote;
    }

    public void setActnote(String actnote) {
        this.actnote = actnote;
    }

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