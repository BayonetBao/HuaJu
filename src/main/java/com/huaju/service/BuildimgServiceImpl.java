package com.huaju.service;

import com.huaju.dao.BuildimgMapper;
import com.huaju.entity.Buildimg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BuildimgServiceImpl implements BuildimgService {

    @Autowired
    private BuildimgMapper buildimgMapper;
    @Override
    public List<Buildimg> AllBuildimg(int id) {
        return buildimgMapper.AllBuildimg(id);
    }

    @Override
    public void AddBuildimg(Buildimg buildimg) {
        buildimgMapper.AddBuildimg(buildimg);
    }

    @Override
    public void deleteBuildimg(int id) {
        buildimgMapper.deleteBuildimg(id);
    }
}
