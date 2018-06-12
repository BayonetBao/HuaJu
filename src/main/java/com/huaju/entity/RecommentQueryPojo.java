package com.huaju.entity;

public class RecommentQueryPojo {
    Integer commentid;
    Integer reuserid;
    Integer reuserType;
    Integer reobjectid;
    Integer reobjectType;
    String  reusername;
    String  reobjectname;
    Integer restate;

    public RecommentQueryPojo() {
        super();
    }

    public RecommentQueryPojo(Integer commentid, Integer reuserid, Integer reuserType, Integer reobjectid, Integer reobjectType, String reusername, String reobjectname, Integer restate) {
        this.commentid = commentid;
        this.reuserid = reuserid;
        this.reuserType = reuserType;
        this.reobjectid = reobjectid;
        this.reobjectType = reobjectType;
        this.reusername = reusername;
        this.reobjectname = reobjectname;
        this.restate = restate;
    }

    public Integer getRestate() {
        return restate;
    }

    public void setRestate(Integer restate) {
        this.restate = restate;
    }

    public String getReobjectname() {
        return reobjectname;
    }

    public void setReobjectname(String reobjectname) {
        this.reobjectname = reobjectname;
    }

    public String getReusername() {
        return reusername;
    }

    public void setReusername(String reusername) {
        this.reusername = reusername;
    }

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public Integer getReuserid() {
        return reuserid;
    }

    public void setReuserid(Integer reuserid) {
        this.reuserid = reuserid;
    }

    public Integer getReuserType() {
        return reuserType;
    }

    public void setReuserType(Integer reuserType) {
        this.reuserType = reuserType;
    }

    public Integer getReobjectid() {
        return reobjectid;
    }

    public void setReobjectid(Integer reobjectid) {
        this.reobjectid = reobjectid;
    }

    public Integer getReobjectType() {
        return reobjectType;
    }

    public void setReobjectType(Integer reobjectType) {
        this.reobjectType = reobjectType;
    }
}
