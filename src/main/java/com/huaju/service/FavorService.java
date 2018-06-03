package com.huaju.service;

import com.huaju.entity.Favor;

import java.util.List;

public interface FavorService {
    public List<Favor> selectFavorByUserid(Integer id);
    public List<Favor> selectFavorByCommentid(Integer id);
    public boolean deleteFavorByFavorid(Integer id);
    public boolean deleteFavorByUseridAndCommentid(Integer userId,Integer commentId);
    public boolean insertFavor(Favor favor);
}
