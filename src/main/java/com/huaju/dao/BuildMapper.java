package com.huaju.dao;

import com.huaju.entity.Build;
import com.huaju.entity.BuildQueryPojo;

import java.util.List;

import com.huaju.entity.ComidAndBuildName;
import com.huaju.entity.Company;

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
    //通过 开发商id，楼盘面积，省市区，地址，单价总价 特点等等查找楼盘 分页插件 珂
    public List<Build> selectBuildQueryPojo(BuildQueryPojo buildQueryPojo);
    //查询所有楼盘 珂
    public List<Build> selectBuilding();
    //查询发布楼盘的开发商的id 和名字 珂
    public List<Company> selectCompanyInBuild();


}