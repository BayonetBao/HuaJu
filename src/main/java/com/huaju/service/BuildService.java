package com.huaju.service;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Build;
import com.huaju.entity.BuildQueryPojo;
import com.huaju.entity.Company;

import java.util.List;
import java.util.Map;

public interface BuildService {
    //查找发布楼盘的开发商的id和公司名字 珂
    public List<Company> selectCompanyInBuild();
    //通过封装的查询条件实体 各种条件查询楼盘 分页插件 珂
    public PageInfo<Build> selectBuildQueryPojo(Map<String,Object> cmap);
  //    /添加楼盘(张宝)
    public boolean setBuild(Build build);
    //按开发商id查询楼盘(张宝),使用第三方插件分页
   public PageInfo<Build> selectBuildListByCompanyId(Map<String,Object> buildMap);
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
}
