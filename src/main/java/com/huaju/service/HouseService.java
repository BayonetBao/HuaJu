package com.huaju.service;

import com.huaju.entity.House;

import java.util.List;

public interface HouseService {
    // 显示house数据列表信息
    public List<House> selectHouseInfoZYJ();

//    添加house信息
    public void addHouseInfoZYJ(House house);

    //  详情页    显示house和房型的信息    house的详细信息和房型（ABCD）
    public House showHouseDoorAllInfo(int houseid);
    // 详情页  显示户型信息   house 和 Type 的关系    house的居室
    public House showHouseTypeInfo(int houseid);


    //删除house信息
    public void removeHouse(int houseid);

}
