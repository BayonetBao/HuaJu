package com.huaju.entity;

import java.util.Date;
import java.util.List;

public class Comment {
    private Integer commentid;
    private Date comtime;
    private Integer buildingid;
    private Integer id;
    private String idtype;
    private String comtype;
    private String comcontent;
    private String uname;//用户名字
    private String building;//楼按名字
    private List<Favor> favors;

    public String getUname() {
        return uname;
    }

    public String getBuilding() {
        return building;
    }

    public void setBuilding(String building) {
        this.building = building;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public List<Favor> getFavors() {
        return favors;
    }

    public void setFavors(List<Favor> favors) {
        this.favors = favors;
    }

    public Comment() {
        super();
    }

    public Comment(Date comtime, Integer buildingid, Integer id, String idtype, String comtype, String comcontent) {
        this.comtime = comtime;
        this.buildingid = buildingid;
        this.id = id;
        this.idtype = idtype;
        this.comtype = comtype;
        this.comcontent = comcontent;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Comment comment = (Comment) o;

        if (commentid != null ? !commentid.equals(comment.commentid) : comment.commentid != null) return false;
        if (comtime != null ? !comtime.equals(comment.comtime) : comment.comtime != null) return false;
        if (buildingid != null ? !buildingid.equals(comment.buildingid) : comment.buildingid != null) return false;
        if (id != null ? !id.equals(comment.id) : comment.id != null) return false;
        if (idtype != null ? !idtype.equals(comment.idtype) : comment.idtype != null) return false;
        if (comtype != null ? !comtype.equals(comment.comtype) : comment.comtype != null) return false;
        return comcontent != null ? comcontent.equals(comment.comcontent) : comment.comcontent == null;
    }

    @Override
    public int hashCode() {
        int result = commentid != null ? commentid.hashCode() : 0;
        result = 31 * result + (comtime != null ? comtime.hashCode() : 0);
        result = 31 * result + (buildingid != null ? buildingid.hashCode() : 0);
        result = 31 * result + (id != null ? id.hashCode() : 0);
        result = 31 * result + (idtype != null ? idtype.hashCode() : 0);
        result = 31 * result + (comtype != null ? comtype.hashCode() : 0);
        result = 31 * result + (comcontent != null ? comcontent.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "commentid=" + commentid +
                ", comtime=" + comtime +
                ", buildingid=" + buildingid +
                ", id=" + id +
                ", idtype='" + idtype + '\'' +
                ", comtype='" + comtype + '\'' +
                ", comcontent='" + comcontent + '\'' +
                '}';
    }

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public Date getComtime() {
        return comtime;
    }

    public void setComtime(Date comtime) {
        this.comtime = comtime;
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIdtype() {
        return idtype;
    }

    public void setIdtype(String idtype) {
        this.idtype = idtype == null ? null : idtype.trim();
    }

    public String getComtype() {
        return comtype;
    }

    public void setComtype(String comtype) {
        this.comtype = comtype == null ? null : comtype.trim();
    }

    public String getComcontent() {
        return comcontent;
    }

    public void setComcontent(String comcontent) {
        this.comcontent = comcontent == null ? null : comcontent.trim();
    }
}