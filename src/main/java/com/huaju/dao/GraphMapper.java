package com.huaju.dao;

import com.huaju.entity.Build;
import com.huaju.entity.Graph;
import com.huaju.entity.ImgQueryPojo;

import java.util.List;

public interface GraphMapper {
    public Graph AllGraph(int id);

    public void AddGraph(Graph graph);

    public boolean delectGraph(int id);

    public List<Graph> SelectAllGraph(ImgQueryPojo imgQueryPojo);

    public void UpdateGraph(Graph graph);

    public List<Build> selectBuildInGraph(Integer comid);

    //按楼盘id查询效果图
    public List<Graph> selectGraphByBuildingid(int buildingid);

}