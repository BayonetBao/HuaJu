package com.huaju.service;

import com.huaju.dao.BuildTypeMapper;
import com.huaju.entity.BuildType;
import com.huaju.entity.House;
import com.huaju.entity.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BuildTypeServiceImpl implements BuildTypeService{


    @Autowired
    private  BuildTypeMapper buildTypeMapper;
    @Override
    public List<Type> showBuildTypeInfo(int buildingid) {
        return buildTypeMapper.showBuildTypeInfo(buildingid);
    }

    //根据楼盘id查询各个户型的数量(张宝)
    @Override
    public List<BuildType> selectTypeCount(int buildIngid) {

        return buildTypeMapper.selectTypeCount(buildIngid);
    }

    //    根据楼盘id查询楼盘下所有的房子个数    全部（n）ZYJ
    @Override
    public int sumHouse(int buildingid) {
        return buildTypeMapper.sumHouse(buildingid);
    }

    //    根据居室id列出相应的房子信息  点击二居（3）列出相应的3个房子信息ZYJ
    @Override
    public List<House> showhouse2(int typeid, int buildingid) {
        return buildTypeMapper.showhouse2(typeid,buildingid);
    }
    //    根据楼盘id查居室id ZYJ
    @Override
    public List<BuildType> listbuildtype(int buildingid) {
        return buildTypeMapper.listbuildtype(buildingid);
    }

}
