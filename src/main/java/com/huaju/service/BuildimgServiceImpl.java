package com.huaju.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.BuildimgMapper;
import com.huaju.entity.Build;
import com.huaju.entity.Buildimg;
import com.huaju.entity.Graph;
import com.huaju.entity.ImgQueryPojo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class BuildimgServiceImpl implements BuildimgService {

    @Autowired
    private BuildimgMapper buildimgMapper;
    @Override
    public Buildimg AllBuildimg(int id) {
        return buildimgMapper.AllBuildimg(id);
    }

    @Override
    public void AddBuildimg(Buildimg buildimg) {
        buildimgMapper.AddBuildimg(buildimg);
    }

    @Override
    public boolean deleteBuildimg(int id) {
       return buildimgMapper.deleteBuildimg(id);
    }

    @Override
    public PageInfo<Buildimg> selectBuildimgByBuild(Map<String, Object> map) {
        ImgQueryPojo imgQueryPojo = (ImgQueryPojo) map.get("imgQueryPojo");
        int curPage=(int)map.get("curPage");
        int pageSize=(int) map.get("pageSize");
        Page page= PageHelper.startPage(curPage,pageSize);
        List<Buildimg> buildimgs=buildimgMapper.SelectAllBuildimg(imgQueryPojo);
        PageInfo<Buildimg> pageInfo = new PageInfo<>(buildimgs);
        return pageInfo;
    }

    @Override
    public List<Build> selectBuildInBuildimg(Integer comid) {
        return buildimgMapper.selectBuildInBuildimg(comid);
    }

    @Override
    public List<Buildimg> selectBuildimgByBuildingid(int buildingid) {
        return buildimgMapper.selectBuildimgByBuildingid(buildingid);
    }
}
