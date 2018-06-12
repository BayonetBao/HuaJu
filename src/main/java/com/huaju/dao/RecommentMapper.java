package com.huaju.dao;

import com.huaju.entity.Recomment;
import com.huaju.entity.RecommentQueryPojo;

import java.util.List;

public interface RecommentMapper {
    public List<Recomment> selectRecommentByQueryPojo(RecommentQueryPojo recommentQueryPojo);
    public boolean addRecoment(Recomment recomment);
    public boolean deleteRecomment(Integer recommentid);
    public boolean deleteRecomentByCommentid(Integer commentid);
}
