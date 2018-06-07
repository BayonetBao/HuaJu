package com.huaju.dao;

import com.huaju.entity.BuildType;
import com.huaju.entity.Door;
import com.huaju.entity.House;

import java.util.List;


public interface HouseMapper {
// 显示house数据列表信息
    public List<House> selectHouseInfoZYJ();




//显示house和房型的信息
    public House showHouseDoorAllInfo(int houseid);

//    显示户型信息   house 和 Type 的关系
    public House showHouseTypeInfo(int houseid);




//删除house信息
    public void removeHouse(int houseid);








//    添加house信息
    public void addHouseInfoZYJ(House house);
}