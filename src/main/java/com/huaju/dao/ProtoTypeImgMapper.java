package com.huaju.dao;

import com.huaju.entity.Build;
import com.huaju.entity.ImgQueryPojo;
import com.huaju.entity.ProtoTypeImg;

import java.util.List;

public interface ProtoTypeImgMapper {
    public ProtoTypeImg AllPrototypeimg(int id);

    public void addPrototypeimg(ProtoTypeImg protoTypeImg);

    public boolean delectPrototypeimg(int id);

    public List<ProtoTypeImg> SelectAllPrototypeimg(ImgQueryPojo imgQueryPojo);

    public List<Build> selectBuildInProtoimg(Integer comid);
}