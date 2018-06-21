package com.huaju.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.ProtoTypeImgMapper;
import com.huaju.entity.Build;
import com.huaju.entity.Buildimg;
import com.huaju.entity.ImgQueryPojo;
import com.huaju.entity.ProtoTypeImg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ProtoServiceImpl implements ProtoService {

    @Autowired
    private ProtoTypeImgMapper protoTypeImgMapper;
    @Override
    public ProtoTypeImg AllPrototypeimg(int id) {
        return protoTypeImgMapper.AllPrototypeimg(id);
    }

    @Override
    public void addPrototypeimg(ProtoTypeImg protoTypeImg) {
        protoTypeImgMapper.addPrototypeimg(protoTypeImg);
    }

    @Override
    public boolean delectPrototypeimg(int id) {
        return protoTypeImgMapper.delectPrototypeimg(id);
    }

    @Override
    public PageInfo<ProtoTypeImg> selectprototypeimgByBuild(Map<String, Object> map) {
        ImgQueryPojo imgQueryPojo = (ImgQueryPojo) map.get("imgQueryPojo");
        int curPage=(int)map.get("curPage");
        int pageSize=(int) map.get("pageSize");
        Page page= PageHelper.startPage(curPage,pageSize);
        List<ProtoTypeImg> protoTypeImgs=protoTypeImgMapper.SelectAllPrototypeimg(imgQueryPojo);
        PageInfo<ProtoTypeImg> pageInfo = new PageInfo<>(protoTypeImgs);
        return pageInfo;
    }

    @Override
    public List<Build> selectBuildInProtoTypeImg(Integer comid) {
        return protoTypeImgMapper.selectBuildInProtoimg(comid);
    }

    @Override
    //按楼盘id查询样板间
    public List<ProtoTypeImg> selectProtoTypeImgByBuildingid(int buildingid){
        return protoTypeImgMapper.selectProtoTypeImgByBuildingid(buildingid);
    }
}
