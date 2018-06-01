package com.huaju.service;

import com.huaju.dao.DynamicMapper;
import com.huaju.entity.Dynamic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DynamicServiceImpl implements DynamicService {
    @Autowired
    private DynamicMapper dynamicMapper;

    @Override
    public boolean insertDynamic(Dynamic dynamic) {
        return dynamicMapper.insertDynamic(dynamic);
    }

    @Override
    public boolean updateDynamic(Dynamic dynamic) {
        return dynamicMapper.updateDynamic(dynamic);
    }

    @Override
    public boolean deleteDynamic(Integer id) {
        return dynamicMapper.deleteDynamic(id);
    }

    @Override
    public List<Dynamic> selectAllDynamic() {
        return dynamicMapper.selectAllDynamic();
    }

    @Override
    public List<Dynamic> selectDynamicByBuild(Integer id) {
        return dynamicMapper.selectDynamicByBuild(id);
    }
}
