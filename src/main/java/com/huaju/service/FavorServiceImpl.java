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
    public List<Favor> selectFavorByUserid(Integer id) {
        return favorMapper.selectFavorByUserid(id);
    }

    @Override
    public List<Favor> selectFavorByCommentid(Integer id) {
        return favorMapper.selectFavorByCommentid(id);
    }

    @Override
    public boolean deleteFavorByFavorid(Integer id) {
        return favorMapper.deleteFavorByFavorid(id);
    }
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
    @Override
    public boolean deleteFavorByUseridAndCommentid(Integer userId, Integer commentId) {
        return favorMapper.deleteFavorByUseridAndCommentid(userId, commentId);
    }
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
    @Override
    public boolean insertFavor(Favor favor) {
        return favorMapper.insertFavor(favor);
    }
}
