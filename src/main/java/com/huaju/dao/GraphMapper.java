package com.huaju.dao;

import com.huaju.entity.Graph;

import java.util.List;

public interface GraphMapper {
    public List<Graph> AllGraph(int id);

    public void AddGraph(Graph graph);

    public void delectGraph(int id);

}