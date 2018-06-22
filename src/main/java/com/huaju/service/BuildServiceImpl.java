package com.huaju.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.BuildMapper;
import com.huaju.dao.TypeMapper;
import com.huaju.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class BuildServiceImpl implements BuildService{
    @Autowired
    BuildMapper buildMapper;
    @Autowired
    TypeMapper typeMapper;

    @Override
    public List<Company> selectCompanyInBuild() {
        return buildMapper.selectCompanyInBuild();
    }
   //分页按条件查询楼盘 珂
    @Override
    public PageInfo<Build> selectBuildQueryPojo(Map<String, Object> cmap) {
        BuildQueryPojo buildQueryPojo = (BuildQueryPojo) cmap.get("buildQueryPojo");
        int curPage=(int)cmap.get("curPage");
        int pageSize=(int) cmap.get("pageSize");
        PageHelper.startPage(curPage,pageSize);
        List<Build> builds=buildMapper.selectBuildQueryPojo(buildQueryPojo);
        PageInfo<Build> pageInfo=new PageInfo<>(builds);
        return pageInfo;
    }


    //    /添加楼盘(张宝)
    @Override
    public boolean setBuild(Build build){
        return buildMapper.setBuild(build);
    }

    //按开发商id查询楼盘(张宝),使用第三方插件分页
    @Override
    public PageInfo<Build> selectBuildListByCompanyId(Map<String, Object> buildMap) {
        //int companyId= (int) buildMap.get("condition");
        ComidAndBuildName condition= (ComidAndBuildName) buildMap.get("condition");
        int curPage= (int) buildMap.get("curPage");
        int pageSize= (int) buildMap.get("pageSize");
        PageHelper.startPage(curPage,pageSize);
        List<Build> buildList=buildMapper.selectBuildByCondition(condition);
        PageInfo<Build> pageInfo=new PageInfo<Build>(buildList);
        return pageInfo;
    }
    //按楼盘id删除楼盘（张宝）
    @Override
    public boolean deleteBuildById(int buildId) {
        return buildMapper.deleteBuildById(buildId);
    }
    //按楼盘id查询楼盘（张宝）
    @Override
    public Build selectBuildById(int buildingid) {
        return buildMapper.selectBuildById(buildingid);
    }

    @Override
    //更新楼盘基本信息(张宝)
    public boolean updateBuildBasicInfo(Build build){
        return buildMapper.updateBuildBasicInfo(build);
    }
    @Override
    //更新楼盘销售信息(张宝)
    public boolean updateBuildSaleInfo(Build build){
        return buildMapper.updateBuildSaleInfo(build);
    }
    @Override
    //更新楼盘小区信息(张宝)
    public boolean updateBuildSpaceInfo(Build build){
        return buildMapper.updateBuildSpaceInfo(build);
    }
    //按楼盘id查询开发商（张宝）
    public Company selectCompanyByBuildId(int buildingid){
        return buildMapper.selectCompanyByBuildId(buildingid);
    }
    //查询所有的房型
    @Override
    public List<Type> slectAllType() {
        return typeMapper.slectAllType();
    }

    @Override
    //优惠楼盘搜索（张宝）
    public List<Build> selectDiscountBuild(){
      return  buildMapper.selectDiscountBuild();
    }

    @Override
    //推荐楼盘搜索（张宝）
    public List<Build> selectAdviceBuild(){
        return buildMapper.selectAdviceBuild();
    }
    @Override
    //附近楼盘城市搜索（张宝）
    public List<Build> selectNearBuildByCity(String city){
        return buildMapper.selectNearBuildByCity(city);
    }
    @Override
    //附近楼盘城区搜索（张宝）
    public List<Build> selectNearBuildByBrea(String brea){
        return buildMapper.selectNearBuildByBrea(brea);
    }
}
