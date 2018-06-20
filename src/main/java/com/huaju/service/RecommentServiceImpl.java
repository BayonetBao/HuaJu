package com.huaju.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.RecommentMapper;
import com.huaju.entity.Recomment;
import com.huaju.entity.RecommentQueryPojo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

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

    @Override
    public PageInfo<Recomment> selectRecommentById(Map<String, Object> map) {
        RecommentQueryPojo recommentQueryPojo= (RecommentQueryPojo) map.get("recommentQueryPojo");
        int curPage=(int)map.get("curPage");
        int pageSize=(int) map.get("pageSize");
        Page page= PageHelper.startPage(curPage,pageSize);
        List<Recomment> recomments=recommentMapper.selectRecommentByQueryPojo(recommentQueryPojo);
        PageInfo<Recomment> pageInfo=new PageInfo<>(recomments);
        return pageInfo;
    }

    @Override
    public boolean changestate(Integer recommetid) {
        return recommentMapper.changestate(recommetid);
    }
}
