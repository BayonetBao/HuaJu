package com.huaju.dao;

import com.huaju.entity.Build;
import com.huaju.entity.EnvironmentImg;
import com.huaju.entity.ImgQueryPojo;

import java.util.List;

public interface EnvironmentImgMapper {
    public EnvironmentImg AllEnvironmentimg(int id);

    public void AddEnvironmentimg(EnvironmentImg environmentImg);

    public boolean deleteEnvironmentimg(int id);

    public List<EnvironmentImg> SelectAllEnvironmentimg(ImgQueryPojo imgQueryPojo);

    public List<Build> selectBuildInEnvirimg(Integer comid);
}