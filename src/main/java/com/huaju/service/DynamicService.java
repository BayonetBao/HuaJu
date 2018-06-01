package com.huaju.service;

import com.huaju.entity.Dynamic;

import java.util.List;

public interface DynamicService {
    public boolean insertDynamic(Dynamic dynamic);
    public boolean updateDynamic(Dynamic dynamic);
    public boolean deleteDynamic(Integer id);
    public List<Dynamic> selectAllDynamic();
    public List<Dynamic> selectDynamicByBuild(Integer id);
}
