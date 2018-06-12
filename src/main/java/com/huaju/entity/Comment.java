package com.huaju.entity;

import java.util.Date;
import java.util.List;

public class Comment {
    private Integer commentid;
    private Date comtime;
    private Integer buildingid;
    private Integer id;
    private Integer idtype;
    private String comtype;
    private String comcontent;
    private String uname;//用户名字
    private String userpic;
    private String building;//楼按名字
    private List<Favor> favors;

    public String getUname() {
        return uname;
    }

    public String getBuilding() {
        return building;
    }

    public String getUserpic() {
        return userpic;
    }

    public void setUserpic(String userpic) {
        this.userpic = userpic;
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

    public Comment(Date comtime, Integer buildingid, Integer id, Integer idtype, String comtype, String comcontent, String uname, String building, List<Favor> favors) {
        this.comtime = comtime;
        this.buildingid = buildingid;
        this.id = id;
        this.idtype = idtype;
        this.comtype = comtype;
        this.comcontent = comcontent;
        this.uname = uname;
        this.building = building;
        this.favors = favors;
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

    public Integer getIdtype() {
        return idtype;
    }

    public void setIdtype(Integer idtype) {
        this.idtype = idtype;
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