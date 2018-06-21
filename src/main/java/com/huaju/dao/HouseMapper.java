package com.huaju.dao;

import com.huaju.entity.BuildType;
import com.huaju.entity.Door;
import com.huaju.entity.House;

import java.util.List;


public interface HouseMapper {
// 显示house数据列表信息
    public List<House> selectHouseInfoZYJ();

//根据楼盘id查找楼房信息
    public List<House> showHouseList(int buildingid);
    //根据楼盘id查找楼房信息的全部信息(张宝)
    public List<House> selectHouseListBybuildingid(int buildingid);

//显示house和房型的信息
    public House showHouseDoorAllInfo(int houseid);

//    显示户型信息   house 和 Type 的关系
    public House showHouseTypeInfo(int houseid);


//删除house信息
    public void removeHouse(int houseid);



//    根据id查询房子信息
    public House getHouse(int houseid);


//修改商品
    public boolean updatehouse(House house);


//    添加house信息
    public void addHouseInfoZYJ(House house);
//查询出居室id对应的楼户id
    public int searchHouseBtypeid(int btypeid , int buildingid);




    //根据id查询door信息
    public  House  perDoorInfo(int doorid);
}



