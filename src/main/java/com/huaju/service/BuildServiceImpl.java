package com.huaju.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.BuildMapper;
import com.huaju.entity.Build;
import com.huaju.entity.BuildQueryPojo;
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
    public boolean setBuild(Build build){
        return buildMapper.setBuild(build);
    }
}
