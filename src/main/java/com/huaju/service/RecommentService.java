package com.huaju.service;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Recomment;
import com.huaju.entity.RecommentQueryPojo;

import java.util.List;
import java.util.Map;

public interface RecommentService {
    public List<Recomment> selectRecommentByQueryPojo(RecommentQueryPojo recommentQueryPojo);
    public boolean addRecoment(Recomment recomment);
    public boolean deleteRecomment(Integer recommentid);
    public boolean deleteRecomentByCommentid(Integer commentid);
    public PageInfo<Recomment> selectRecommentById(Map<String,Object> map);
    public boolean changestate(Integer recommetid);
}
