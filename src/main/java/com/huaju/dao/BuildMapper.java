package com.huaju.dao;

import com.huaju.entity.Build;
import com.huaju.entity.BuildQueryPojo;

import java.util.List;

public interface BuildMapper {
    //添加楼盘
    public void setBuild(Build build);
    public List<Build> selectBuildQueryPojo(BuildQueryPojo buildQueryPojo);
}