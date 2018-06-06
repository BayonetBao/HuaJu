package com.huaju.service;

import com.huaju.entity.Graph;

import java.util.List;

public interface GraphimgService {
    public List<Graph> AllGraph(int id);

    public void AddGraph(Graph graph);

    public void delectGraph(int id);
}
