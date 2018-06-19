package com.huaju.service;

import com.huaju.dao.HouseMapper;
import com.huaju.entity.Door;
import com.huaju.entity.House;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class HouseServiceImpl implements HouseService{
    @Autowired
    private HouseMapper houseMapper;


    @Override
    public List<House> selectHouseInfoZYJ() {
        return houseMapper.selectHouseInfoZYJ();
    }

    @Override
    public List<House> showHouseList(int buildingid) {
        return houseMapper.showHouseList(buildingid);
    }

    @Override

    //根据楼盘id查找楼房信息的全部信息(张宝)
    public List<House> selectHouseListBybuildingid(int buildingid){
        return houseMapper.selectHouseListBybuildingid(buildingid);
    }


    @Override
    public void addHouseInfoZYJ(House house) {

        houseMapper.addHouseInfoZYJ(house);
    }

    @Override
    public int searchHouseBtypeid(int btypeid, int buildingid) {
        return houseMapper.searchHouseBtypeid(btypeid,buildingid);
    }


    @Override
    public House showHouseDoorAllInfo(int houseid) {
        return houseMapper.showHouseDoorAllInfo(houseid);
    }

    @Override
    public House showHouseTypeInfo(int houseid) {
        return houseMapper.showHouseTypeInfo(houseid);
    }

    @Override
    public void removeHouse(int houseid) {
        houseMapper.removeHouse(houseid);
    }

    @Override
    public House getHouse(int houseid) {
        return houseMapper.getHouse(houseid);
    }

    @Override
    public boolean updatehouse(House house) {
        return houseMapper.updatehouse(house);
    }

    @Override
    public House perDoorInfo(int doorid) {
        return houseMapper.perDoorInfo(doorid);
    }


}
