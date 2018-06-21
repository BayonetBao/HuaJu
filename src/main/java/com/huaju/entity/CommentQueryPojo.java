package com.huaju.entity;

public class CommentQueryPojo {
    private Integer commentid;//评论id
    private Integer buildingid;//楼盘id
    private Integer idtype;//评论人员的类型 用户咨询师
    private String comtype;//评论的类型 好评差评
    private Integer userid;//评论人的id

    public CommentQueryPojo() {
        super();
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

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
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
        this.comtype = comtype;
    }
}
