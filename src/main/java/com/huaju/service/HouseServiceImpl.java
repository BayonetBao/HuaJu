package com.huaju.service;

import com.huaju.dao.HouseMapper;
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
    public void addHouseInfoZYJ(House house) {

        houseMapper.addHouseInfoZYJ(house);
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

}
