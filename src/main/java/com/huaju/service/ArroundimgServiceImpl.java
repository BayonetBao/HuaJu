package com.huaju.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.ArroundimgMapper;
import com.huaju.entity.Arroundimg;
import com.huaju.entity.Build;
import com.huaju.entity.ImgQueryPojo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ArroundimgServiceImpl implements ArroundimgService {

    @Autowired
    private ArroundimgMapper arroundimgMapper;
    @Override
    public Arroundimg AllArroundimg(int id) {
        return arroundimgMapper.AllArroundimg(id);
    }

    @Override
    public void AddArroundimg(Arroundimg arroundimg) {
        arroundimgMapper.AddArroundimg(arroundimg);
    }

    @Override
    public boolean deleteArroundimg(int id) {
        return  arroundimgMapper.deleteArroundimg(id);
    }

    @Override
    public PageInfo<Arroundimg> selectArroundimgByBuild(Map<String, Object> map) {
        ImgQueryPojo imgQueryPojo = (ImgQueryPojo) map.get("imgQueryPojo");
        int curPage=(int)map.get("curPage");
        int pageSize=(int) map.get("pageSize");
        Page page= PageHelper.startPage(curPage,pageSize);
        List<Arroundimg> arroundimgs=arroundimgMapper.SelectAllArrountimg(imgQueryPojo);
        PageInfo<Arroundimg> pageInfo = new PageInfo<>(arroundimgs);
        return pageInfo;
    }

    @Override
    public List<Build> selectBuildInArroundimg(Integer comid) {
        return arroundimgMapper.selectBuildInArroundimg(comid);
    }

    @Override
    public List<Arroundimg> selectArroundimgByBuildingid(int buildingid) {
        return arroundimgMapper.selectArroundimgByBuildingid(buildingid);
    }
}
