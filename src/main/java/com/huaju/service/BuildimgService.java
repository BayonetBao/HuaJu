package com.huaju.service;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Build;
import com.huaju.entity.Buildimg;
import com.huaju.entity.Graph;

import java.util.List;
import java.util.Map;

public interface BuildimgService {
    public Buildimg AllBuildimg(int id);

    public void AddBuildimg(Buildimg buildimg);

    public boolean deleteBuildimg(int id);

    public PageInfo<Buildimg> selectBuildimgByBuild(Map<String,Object> map);

    public List<Build> selectBuildInBuildimg(Integer comid);

    //根据楼盘id查询楼盘实景图
    public List<Buildimg> selectBuildimgByBuildingid(int buildingid);
}
