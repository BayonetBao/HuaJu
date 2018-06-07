package com.huaju.service;

import com.huaju.dao.ArroundimgMapper;
import com.huaju.entity.Arroundimg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArroundimgServiceImpl implements ArroundimgService {

    @Autowired
    private ArroundimgMapper arroundimgMapper;
    @Override
    public List<Arroundimg> AllArroundimg(int id) {
        return arroundimgMapper.AllArroundimg(id);
    }

    @Override
    public void AddArroundimg(Arroundimg arroundimg) {
        arroundimgMapper.AddArroundimg(arroundimg);
    }

    @Override
    public void deleteArroundimg(int id) {
        arroundimgMapper.deleteArroundimg(id);
    }
}
