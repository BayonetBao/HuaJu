package com.huaju.entity;

import java.util.List;

public class BuildType {
    private Integer butypeid;

    private Integer typeid;

    private Integer buildingid;

    private Integer count;
    private String typename;

    private Type type;

    private  List<Type> typeList;

    public List<Type> getTypeList() {
        return typeList;
    }

    public void setTypeList(List<Type> typeList) {
        this.typeList = typeList;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public BuildType() {

    }

    public BuildType(Integer butypeid, Integer typeid, Integer buildingid, Integer count, String typename) {
        this.butypeid = butypeid;
        this.typeid = typeid;
        this.buildingid = buildingid;
        this.count = count;
        this.typename = typename;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public Integer getButypeid() {
        return butypeid;
    }

    public void setButypeid(Integer butypeid) {
        this.butypeid = butypeid;
    }

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "BuildType{" +
                "butypeid=" + butypeid +
                ", typeid=" + typeid +
                ", buildingid=" + buildingid +
                ", count=" + count +
                ", typename='" + typename + '\'' +
                ", type=" + type +
                '}';
    }
}