package com.huaju.service;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Build;
import com.huaju.entity.BuildQueryPojo;

import java.util.List;
import java.util.Map;

public interface BuildService {
    public PageInfo<Build> selectBuildQueryPojo(Map<String,Object> cmap);
//    /添加楼盘(张宝)
    public boolean setBuild(Build build);
    //按开发商id查询楼盘(张宝),使用第三方插件分页
   public PageInfo<Build> selectBuildListByCompanyId(Map<String,Object> buildMap);
    //按楼盘id删除楼盘（张宝）
    public boolean deleteBuildById(int buildingid);
    //按楼盘id查询楼盘（张宝）
    public Build selectBuildById(int buildingid);
}
