package com.huaju.service;

import com.huaju.dao.RecommentMapper;
import com.huaju.entity.Recomment;
import com.huaju.entity.RecommentQueryPojo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RecommentServiceImpl implements RecommentService {
    @Autowired
    RecommentMapper recommentMapper;
    @Override
    public List<com.huaju.entity.Recomment> selectRecommentByQueryPojo(RecommentQueryPojo recommentQueryPojo) {
        return recommentMapper.selectRecommentByQueryPojo(recommentQueryPojo);
    }

    @Override
    public boolean addRecoment(Recomment recomment) {
        return recommentMapper.addRecoment(recomment);
    }

    @Override
    public boolean deleteRecomment(Integer recommentid) {
        return recommentMapper.deleteRecomment(recommentid);
    }

    @Override
    public boolean deleteRecomentByCommentid(Integer commentid) {
        return recommentMapper.deleteRecomentByCommentid(commentid);
    }
}
