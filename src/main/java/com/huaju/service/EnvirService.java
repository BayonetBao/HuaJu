package com.huaju.service;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Build;
import com.huaju.entity.Buildimg;
import com.huaju.entity.EnvironmentImg;

import java.util.List;
import java.util.Map;

public interface EnvirService {
    public EnvironmentImg AllEnvironmentimg(int id);

    public void AddEnvironmentimg(EnvironmentImg environmentImg);

    public boolean deleteEnvironmentimg(int id);

    public PageInfo<EnvironmentImg> selectEnvirimgByBuild(Map<String,Object> map);

    public List<Build> selectBuildInEnvirimg(Integer comid);
}
