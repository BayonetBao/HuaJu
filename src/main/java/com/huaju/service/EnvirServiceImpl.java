package com.huaju.service;

import com.huaju.dao.EnvironmentImgMapper;
import com.huaju.entity.EnvironmentImg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EnvirServiceImpl implements EnvirService {

    @Autowired
    private EnvironmentImgMapper environmentImgMapper;
    @Override
    public List<EnvironmentImg> AllEnvironmentimg(int id) {
        return environmentImgMapper.AllEnvironmentimg(id);
    }

    @Override
    public void AddEnvironmentimg(EnvironmentImg environmentImg) {
        environmentImgMapper.AddEnvironmentimg(environmentImg);
    }

    @Override
    public void deleteEnvironmentimg(int id) {
        environmentImgMapper.deleteEnvironmentimg(id);
    }
}
