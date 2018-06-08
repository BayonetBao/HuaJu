package com.huaju.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.BuildMapper;
import com.huaju.entity.Build;
import com.huaju.entity.BuildQueryPojo;
import com.huaju.entity.ComidAndBuildName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class BuildServiceImpl implements BuildService{
    @Autowired
    BuildMapper buildMapper;
    @Override
    public PageInfo<Build> selectBuildQueryPojo(Map<String, Object> cmap) {
        BuildQueryPojo buildQueryPojo = (BuildQueryPojo) cmap.get("buildQueryPojo");
        int curPage=(int)cmap.get("curPage");
        int pageSize=(int) cmap.get("pageSize");
        PageHelper.startPage(curPage,pageSize);
        List<Build> builds=buildMapper.selectBuildQueryPojo(buildQueryPojo);
        PageInfo<Build> pageInfo=new PageInfo<Build>(builds);
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

}
