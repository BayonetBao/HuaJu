package com.huaju.dao;

import com.huaju.entity.BuildType;
import com.huaju.entity.House;
import com.huaju.entity.Type;

import java.util.List;

//居室
public interface BuildTypeMapper {
//    根据楼盘名字查询居室，显示在房子添加页面的居室选择上
    public List<Type> showBuildTypeInfo(int buildingid);
    //根据楼盘id查询各个户型的数量(张宝)
    public List<BuildType> selectTypeCount(int buildIngid);

    //根据楼盘查询buildtype 珂
//    public List<BuildType> selectByBuildingid(Integer buildingid);

//    根据楼盘id查询楼盘下所有的房子个数    全部（n）ZYJ
    public int sumHouse(int buildingid);


//    根据居室id列出相应的房子信息  点击二居（3）列出相应的3个房子信息ZYJ
    public List<House> showhouse2(int typeid , int buildingid);

//    根据楼盘id查居室id ZYJ
    public List<BuildType> listbuildtype(int buildingid);

//    查询居室的种类根据楼盘id
    public List<BuildType> numJushiType(int buildingid);
}