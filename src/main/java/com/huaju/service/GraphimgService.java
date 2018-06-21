package com.huaju.service;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Build;
import com.huaju.entity.Graph;
import com.huaju.entity.ImgQueryPojo;

import java.util.List;
import java.util.Map;

public interface GraphimgService {
    public Graph AllGraph(int id);

    public void AddGraph(Graph graph);

    public boolean delectGraph(int id);

    public PageInfo<Graph> selectGraphByBuild(Map<String,Object> map);

    public List<Build> selectBuildInGraph(Integer comid);

    public void UpdateGraph(Graph graph);

    //按楼盘id查询效果图
    public List<Graph> selectGraphByBuildingid(int buildingid);
}
