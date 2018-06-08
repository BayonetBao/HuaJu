package com.huaju.service;

import com.huaju.dao.BuildTypeMapper;
import com.huaju.entity.BuildType;
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


}
