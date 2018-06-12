package com.huaju.entity;

import java.util.Date;

public class Recomment {
    Integer recommentid;
    Integer commentid;
    Integer reuserid;
    Integer reusertype;
    String recontent;
    Date recomtime;
    Integer reobjectid;
    Integer reobjecttype;
    String reusername;
    String reobjectname;
    Integer restate;

    public Recomment() {
        super();
    }

    public Recomment(Integer commentid, Integer reuserid, Integer reusertype, String recontent, Date recomtime, Integer reobjectid, Integer reobjecttype, String reusername, String reobjectname, Integer restate) {
        this.commentid = commentid;
        this.reuserid = reuserid;
        this.reusertype = reusertype;
        this.recontent = recontent;
        this.recomtime = recomtime;
        this.reobjectid = reobjectid;
        this.reobjecttype = reobjecttype;
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

    public Integer getReusertype() {
        return reusertype;
    }

    public void setReusertype(Integer reusertype) {
        this.reusertype = reusertype;
    }

    public Integer getReobjecttype() {
        return reobjecttype;
    }

    public void setReobjecttype(Integer reobjecttype) {
        this.reobjecttype = reobjecttype;
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

    public Integer getRecommentid() {
        return recommentid;
    }

    public void setRecommentid(Integer recommentid) {
        this.recommentid = recommentid;
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

    public String getRecontent() {
        return recontent;
    }

    public void setRecontent(String recontent) {
        this.recontent = recontent;
    }

    public Date getRecomtime() {
        return recomtime;
    }

    public void setRecomtime(Date recomtime) {
        this.recomtime = recomtime;
    }

    public Integer getReobjectid() {
        return reobjectid;
    }

    public void setReobjectid(Integer reobjectid) {
        this.reobjectid = reobjectid;
    }

}
