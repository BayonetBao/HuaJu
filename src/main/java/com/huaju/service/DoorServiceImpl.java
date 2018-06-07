package com.huaju.service;

import com.huaju.dao.DoorMapper;
import com.huaju.entity.Door;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DoorServiceImpl implements DoorService {

    @Autowired
    private DoorMapper doorMapper;
    @Override
    public Door showAllDoorInfo() {
        return doorMapper.showAllDoorInfo();
    }
}
