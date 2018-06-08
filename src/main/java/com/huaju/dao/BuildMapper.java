package com.huaju.dao;

import com.huaju.entity.Build;
import com.huaju.entity.BuildQueryPojo;

import java.util.List;

import com.huaju.entity.ComidAndBuildName;

public interface BuildMapper {
    //添加楼盘(张宝)
    public boolean setBuild(Build build);
    //按开发商id和名字查询楼盘(张宝)
    public List<Build> selectBuildByCondition(ComidAndBuildName companyIdAndBuildName);
    public List<Build> selectBuildQueryPojo(BuildQueryPojo buildQueryPojo);
    public List<Build> selectBuilding();

}