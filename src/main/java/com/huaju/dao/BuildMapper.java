package com.huaju.dao;

import com.huaju.entity.Build;
import com.huaju.entity.BuildQueryPojo;

import java.util.List;

public interface BuildMapper {
    public List<Build> selectBuildQueryPojo(BuildQueryPojo buildQueryPojo);
}