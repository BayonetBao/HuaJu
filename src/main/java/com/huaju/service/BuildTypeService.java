package com.huaju.service;

import com.huaju.entity.BuildType;
import com.huaju.entity.Type;

import java.util.List;

public interface BuildTypeService {

    //    根据楼盘名字查询居室，显示在房子添加页面的居室选择上
    public List<Type> showBuildTypeInfo(int buildingid);
}
