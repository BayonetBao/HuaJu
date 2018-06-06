package com.huaju.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.DynamicMapper;
import com.huaju.entity.Build;
import com.huaju.entity.Dynamic;
import com.huaju.entity.DynamicQueryPojo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
public class DynamicServiceImpl implements DynamicService {
    @Autowired
    private DynamicMapper dynamicMapper;
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
    @Override
    public boolean insertDynamic(Dynamic dynamic) {
        return dynamicMapper.insertDynamic(dynamic);
    }
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
    @Override
    public boolean updateDynamic(Dynamic dynamic) {
        return dynamicMapper.updateDynamic(dynamic);
    }
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
    @Override
    public boolean deleteDynamic(Integer id) {
        return dynamicMapper.deleteDynamic(id);
    }

    @Override
    public Dynamic selectDynamicById(Integer id) {
        return dynamicMapper.selectDynamicById(id);
    }

    @Override
    public List<Build> selectBuildingInDynamic(Integer comid) {
        return dynamicMapper.selectBuildingInDynamic(comid);
    }

    @Override
    public PageInfo<Dynamic> selectDynamicByBuild(Map<String,Object> map){
        DynamicQueryPojo dynamicQueryPojo= (DynamicQueryPojo) map.get("dynamicQueryPojo");
        int curPage=(int)map.get("curPage");
        int pageSize=(int) map.get("pageSize");
        Page page= PageHelper.startPage(curPage,pageSize);
        List<Dynamic> dynamics=dynamicMapper.selectAllDynamicByQueryPojo(dynamicQueryPojo);
        PageInfo<Dynamic> pageInfo=new PageInfo<>(dynamics);
        return pageInfo;
    }
}
