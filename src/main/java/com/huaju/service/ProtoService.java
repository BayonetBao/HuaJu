package com.huaju.service;

import com.huaju.entity.ProtoTypeImg;

import java.util.List;

public interface ProtoService {
    public List<ProtoTypeImg> AllPrototypeimg(int id);

    public void addPrototypeimg(ProtoTypeImg protoTypeImg);

    public void delectPrototypeimg(int id);
}
