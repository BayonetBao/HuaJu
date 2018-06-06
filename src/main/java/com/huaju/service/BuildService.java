package com.huaju.service;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Build;
import com.huaju.entity.BuildQueryPojo;

import java.util.List;
import java.util.Map;

public interface BuildService {
    public PageInfo<Build> selectBuildQueryPojo(Map<String,Object> cmap);
}
