package com.huaju.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.EnvironmentImgMapper;
import com.huaju.entity.Build;
import com.huaju.entity.Buildimg;
import com.huaju.entity.EnvironmentImg;
import com.huaju.entity.ImgQueryPojo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class EnvirServiceImpl implements EnvirService {

    @Autowired
    private EnvironmentImgMapper environmentImgMapper;
    @Override
    public EnvironmentImg AllEnvironmentimg(int id) {
        return environmentImgMapper.AllEnvironmentimg(id);
    }

    @Override
    public void AddEnvironmentimg(EnvironmentImg environmentImg) {
        environmentImgMapper.AddEnvironmentimg(environmentImg);
    }

    @Override
    public boolean deleteEnvironmentimg(int id) {
        return  environmentImgMapper.deleteEnvironmentimg(id);
    }

    @Override
    public PageInfo<EnvironmentImg> selectEnvirimgByBuild(Map<String, Object> map) {
        ImgQueryPojo imgQueryPojo = (ImgQueryPojo) map.get("imgQueryPojo");
        int curPage=(int)map.get("curPage");
        int pageSize=(int) map.get("pageSize");
        Page page= PageHelper.startPage(curPage,pageSize);
        List<EnvironmentImg> environmentImgs=environmentImgMapper.SelectAllEnvironmentimg(imgQueryPojo);
        PageInfo<EnvironmentImg> pageInfo = new PageInfo<>(environmentImgs);
        return pageInfo;
    }

    @Override
    public List<Build> selectBuildInEnvirimg(Integer comid) {
        return environmentImgMapper.selectBuildInEnvirimg(comid);
    }
}
