package com.huaju.dao;

import com.huaju.entity.Favor;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FavorMapper {
    public List<Favor> selectFavorByUserid(Integer id);
    public List<Favor> selectFavorByCommentid(Integer id);
    public boolean deleteFavorByFavorid(Integer id);
    public boolean deleteFavorByUseridAndCommentid(Integer userId,Integer commentId);
    public boolean insertFavor(Favor favor);

}