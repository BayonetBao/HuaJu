package com.huaju.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.DynamicMapper;
import com.huaju.entity.Dynamic;
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
    public List<Dynamic> selectAllDynamic() {
        return dynamicMapper.selectAllDynamic();
    }

    @Override
    public PageInfo<Dynamic> selectDynamicByBuild(Map<String,Object> map){
        PageInfo<Dynamic> pageBean=new PageInfo<Dynamic>();
        //页面数据填充
        int curPage=(int)map.get("curPage");
        int pageSize=(int) map.get("pageSize");
        Integer buildingid= (Integer) map.get("buildingid");
        List<Dynamic> list=dynamicMapper.selectDynamicByBuild(buildingid);
        PageHelper.startPage(curPage,pageSize);
        PageInfo<Dynamic> pageInfo=new PageInfo<>(list);
        return pageBean;
    }
}
