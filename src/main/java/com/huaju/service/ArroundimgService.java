package com.huaju.service;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Arroundimg;
import com.huaju.entity.Build;
import com.huaju.entity.Buildimg;

import java.util.List;
import java.util.Map;

public interface ArroundimgService {
    public Arroundimg AllArroundimg(int id);

    public void AddArroundimg(Arroundimg arroundimg);

    public boolean deleteArroundimg(int id);

    public PageInfo<Arroundimg> selectArroundimgByBuild(Map<String,Object> map);

    public List<Build> selectBuildInArroundimg(Integer comid);
}
