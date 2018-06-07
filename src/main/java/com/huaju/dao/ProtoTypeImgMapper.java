package com.huaju.dao;

import com.huaju.entity.ProtoTypeImg;

import java.util.List;

public interface ProtoTypeImgMapper {
    public List<ProtoTypeImg> AllPrototypeimg(int id);

    public void addPrototypeimg(ProtoTypeImg protoTypeImg);

    public void delectPrototypeimg(int id);

}