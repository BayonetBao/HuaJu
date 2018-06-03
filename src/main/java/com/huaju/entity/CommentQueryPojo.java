package com.huaju.entity;

public class CommentQueryPojo {
    private Integer buildingid;//楼盘id
    private String idtype;//评论人员的类型 用户咨询师
    private String comtype;//评论的类型 好评差评

    public CommentQueryPojo() {
        super();
    }

    public CommentQueryPojo(Integer buildingid, String idtype, String comtype) {
        this.buildingid = buildingid;
        this.idtype = idtype;
        this.comtype = comtype;
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }

    public String getIdtype() {
        return idtype;
    }

    public void setIdtype(String idtype) {
        this.idtype = idtype;
    }

    public String getComtype() {
        return comtype;
    }

    public void setComtype(String comtype) {
        this.comtype = comtype;
    }
}
