package com.huaju.dao;

import com.huaju.entity.Build;
import com.huaju.entity.BuildQueryPojo;

import java.util.List;

import com.huaju.entity.Build;

import java.util.List;

public interface BuildMapper {
    //添加楼盘(张宝)
    public boolean setBuild(Build build);
    public List<Build> selectBuildQueryPojo(BuildQueryPojo buildQueryPojo);
    public List<Build> selectBuilding();

}