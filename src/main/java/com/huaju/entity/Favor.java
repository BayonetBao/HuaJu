package com.huaju.entity;

public class Favor {
    private Integer favorid;

    private Integer commentid;

    private Integer userid;
    private Integer favortype;

    public Favor() {
        super();
    }

    public Favor(Integer commentid, Integer userid, Integer favortype) {
        this.commentid = commentid;
        this.userid = userid;
        this.favortype = favortype;
    }

    public Favor(Integer favorid, Integer commentid, Integer userid, Integer favortype) {
        this.favorid = favorid;
        this.commentid = commentid;
        this.userid = userid;
        this.favortype = favortype;
    }

    public Integer getFavortype() {
        return favortype;
    }

    public void setFavortype(Integer favortype) {
        this.favortype = favortype;
    }

    public Integer getFavorid() {
        return favorid;
    }

    public void setFavorid(Integer favorid) {
        this.favorid = favorid;
    }

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}