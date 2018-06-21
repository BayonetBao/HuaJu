package com.huaju.service;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Build;
import com.huaju.entity.Buildimg;
import com.huaju.entity.ProtoTypeImg;

import java.util.List;
import java.util.Map;

public interface ProtoService {
    public ProtoTypeImg AllPrototypeimg(int id);

    public void addPrototypeimg(ProtoTypeImg protoTypeImg);

    public boolean delectPrototypeimg(int id);

    public PageInfo<ProtoTypeImg> selectprototypeimgByBuild(Map<String,Object> map);

    public List<Build> selectBuildInProtoTypeImg(Integer comid);

    //按楼盘id查询样板间
    public List<ProtoTypeImg> selectProtoTypeImgByBuildingid(int buildingid);
}
