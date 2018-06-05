package com.huaju.service;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Build;
import com.huaju.entity.Dynamic;

import java.util.List;
import java.util.Map;

public interface DynamicService {
    public boolean insertDynamic(Dynamic dynamic);
    public boolean updateDynamic(Dynamic dynamic);
    public boolean deleteDynamic(Integer id);
    public  Dynamic selectDynamicById(Integer id);
    public List<Build>   selectBuildingInDynamic(Integer comid);
    public PageInfo<Dynamic> selectDynamicByBuild(Map<String,Object> map);
}
