package com.huaju.dao;

import com.huaju.entity.Build;
import com.huaju.entity.Buildimg;
import com.huaju.entity.ImgQueryPojo;

import java.util.List;

public interface BuildimgMapper {

    public Buildimg AllBuildimg(int id);

    public void AddBuildimg(Buildimg buildimg);

    public boolean deleteBuildimg(int id);

    public List<Buildimg> SelectAllBuildimg(ImgQueryPojo imgQueryPojo);

    public List<Build> selectBuildInBuildimg(Integer comid);
}