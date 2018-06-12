package com.huaju.service;

import com.huaju.entity.Recomment;
import com.huaju.entity.RecommentQueryPojo;

import java.util.List;

public interface RecommentService {
    public List<Recomment> selectRecommentByQueryPojo(RecommentQueryPojo recommentQueryPojo);
    public boolean addRecoment(Recomment recomment);
    public boolean deleteRecomment(Integer recommentid);
    public boolean deleteRecomentByCommentid(Integer commentid);
}
