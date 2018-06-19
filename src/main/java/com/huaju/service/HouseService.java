package com.huaju.service;

import com.huaju.entity.Door;
import com.huaju.entity.House;

import java.util.List;

public interface HouseService {
    // 显示house数据列表信息
    public List<House> selectHouseInfoZYJ();

    //根据楼盘id查找楼房信息
    public List<House> showHouseList(int buildingid);
    //根据楼盘id查找楼房信息的全部信息(张宝)
    public List<House> selectHouseListBybuildingid(int buildingid);
//    添加house信息
    public void addHouseInfoZYJ(House house);
    //查询出居室id对应的楼户id
    public int searchHouseBtypeid(int btypeid , int buildingid);





    //  详情页    显示house和房型的信息    house的详细信息和房型（ABCD）
    public House showHouseDoorAllInfo(int houseid);
    // 详情页  显示户型信息   house 和 Type 的关系    house的居室
    public House showHouseTypeInfo(int houseid);


    //删除house信息
    public void removeHouse(int houseid);



    //    根据id查询房子信息
    public House getHouse(int houseid);

   //修改商品
    public boolean updatehouse(House house);

//修改信息页面显示当前id下door的信息
    public  House  perDoorInfo(int doorid);
}
