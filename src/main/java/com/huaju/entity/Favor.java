package com.huaju.entity;

public class Favor {
    private Integer favorid;

    private Integer commentid;

    private Integer userid;

    public Favor() {
        super();
    }

    public Favor(Integer commentid, Integer userid) {
        this.commentid = commentid;
        this.userid = userid;
    }

    @Override
    public String toString() {
        return "Favor{" +
                "favorid=" + favorid +
                ", commentid=" + commentid +
                ", userid=" + userid +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Favor favor = (Favor) o;

        if (favorid != null ? !favorid.equals(favor.favorid) : favor.favorid != null) return false;
        if (commentid != null ? !commentid.equals(favor.commentid) : favor.commentid != null) return false;
        return userid != null ? userid.equals(favor.userid) : favor.userid == null;
    }

    @Override
    public int hashCode() {
        int result = favorid != null ? favorid.hashCode() : 0;
        result = 31 * result + (commentid != null ? commentid.hashCode() : 0);
        result = 31 * result + (userid != null ? userid.hashCode() : 0);
        return result;
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