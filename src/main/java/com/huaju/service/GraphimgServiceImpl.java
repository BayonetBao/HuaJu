package com.huaju.service;

import com.huaju.dao.GraphMapper;
import com.huaju.entity.Graph;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class GraphimgServiceImpl implements GraphimgService {

    @Autowired
private GraphMapper graphMapper;
    @Override
    public List<Graph> AllGraph(int id) {
        return graphMapper.AllGraph(id);
    }

    @Override
    public void AddGraph(Graph graph) {
        graphMapper.AddGraph(graph);
    }

    @Override
    public void delectGraph(int id) {
        graphMapper.delectGraph(id);
    }
}
