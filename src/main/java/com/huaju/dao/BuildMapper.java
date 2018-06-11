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
    //按楼盘id删除楼盘（张宝）
    public boolean deleteBuildById(int buildingid);
    //按楼盘id查询楼盘（张宝）
    public Build selectBuildById(int buildingid);
    //更新楼盘基本信息(张宝)
    public boolean updateBuildBasicInfo(Build build);
    //更新楼盘销售信息(张宝)
    public boolean updateBuildSaleInfo(Build build);
    //更新楼盘小区信息(张宝)
    public boolean updateBuildSpaceInfo(Build build);
    public List<Build> selectBuildQueryPojo(BuildQueryPojo buildQueryPojo);
    public List<Build> selectBuilding();

}