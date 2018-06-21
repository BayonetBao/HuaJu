package com.huaju.dao;

import com.huaju.entity.Arroundimg;
import com.huaju.entity.Build;
import com.huaju.entity.ImgQueryPojo;

import java.util.List;

public interface ArroundimgMapper {

    public Arroundimg AllArroundimg(int id);

    public void AddArroundimg(Arroundimg arroundimg);

    public boolean deleteArroundimg(int id);

    public List<Arroundimg> SelectAllArrountimg(ImgQueryPojo imgQueryPojo);

    public List<Build> selectBuildInArroundimg(Integer comid);

    //根据楼盘id查环境图
    public List<Arroundimg> selectArroundimgByBuildingid(int buildingid);
}