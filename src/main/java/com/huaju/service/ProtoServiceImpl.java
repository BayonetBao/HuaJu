package com.huaju.service;

import com.huaju.dao.ProtoTypeImgMapper;
import com.huaju.entity.ProtoTypeImg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProtoServiceImpl implements ProtoService {

    @Autowired
    private ProtoTypeImgMapper protoTypeImgMapper;
    @Override
    public List<ProtoTypeImg> AllPrototypeimg(int id) {
        return protoTypeImgMapper.AllPrototypeimg(id);
    }

    @Override
    public void addPrototypeimg(ProtoTypeImg protoTypeImg) {
        protoTypeImgMapper.addPrototypeimg(protoTypeImg);
    }

    @Override
    public void delectPrototypeimg(int id) {
        protoTypeImgMapper.delectPrototypeimg(id);
    }
}
