package com.huaju.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.GraphMapper;
import com.huaju.entity.Build;
import com.huaju.entity.Graph;
import com.huaju.entity.ImgQueryPojo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
public class GraphimgServiceImpl implements GraphimgService {

    @Autowired
private GraphMapper graphMapper;

    @Override
    public Graph AllGraph(int id) {
        return graphMapper.AllGraph(id);
    }
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
    @Override
    public void AddGraph(Graph graph) {
        graphMapper.AddGraph(graph);
    }
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
    @Override
    public boolean delectGraph(int id) {
        return  graphMapper.delectGraph(id);
    }

    @Override
    public PageInfo<Graph> selectGraphByBuild(Map<String, Object> map) {
        ImgQueryPojo imgQueryPojo = (ImgQueryPojo) map.get("imgQueryPojo");
        int curPage=(int)map.get("curPage");
        int pageSize=(int) map.get("pageSize");
        Page page= PageHelper.startPage(curPage,pageSize);
        List<Graph> graphs=graphMapper.SelectAllGraph(imgQueryPojo);
        PageInfo<Graph> pageInfo = new PageInfo<>(graphs);
        return pageInfo;
    }

    @Override
    public List<Build> selectBuildInGraph(Integer comid) {
        return graphMapper.selectBuildInGraph(comid);
    }


    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
    @Override
    public void UpdateGraph(Graph graph) {
        graphMapper.UpdateGraph(graph);
    }
}
