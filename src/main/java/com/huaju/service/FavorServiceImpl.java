package com.huaju.service;

import com.huaju.dao.FavorMapper;
import com.huaju.entity.Favor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class FavorServiceImpl implements FavorService{
    @Autowired
    private FavorMapper favorMapper;


    @Override
    public List<Favor> selectFavor(Favor favor) {
        return favorMapper.selectFavor(favor);
    }

    @Override
    public boolean deleteFavorByFavorid(Integer id) {
        return favorMapper.deleteFavorByFavorid(id);
    }

    @Override
    public boolean deleteFavorByUseridAndCommentid(Favor favor) {
        return favorMapper.deleteFavorByUseridAndCommentid(favor);
    }
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
    @Override
    public boolean insertFavor(Favor favor) {
        return favorMapper.insertFavor(favor);
    }

    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
    @Override
    public boolean clickFavor(Favor favor) {
        if(favorMapper.selectFavor(favor).size()>0){
            Favor favor1=favorMapper.selectFavor(favor).get(0);
            favorMapper.deleteFavorByFavorid(favor1.getFavorid());
        }else{
            favorMapper.insertFavor(favor);

        }
        return true;
    }

}
