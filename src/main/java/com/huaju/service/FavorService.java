package com.huaju.service;

import com.huaju.entity.Favor;

import java.util.List;

public interface FavorService {
    public List<Favor> selectFavor(Favor favor);
    public boolean deleteFavorByFavorid(Integer id);
    public boolean deleteFavorByUseridAndCommentid(Favor favor);
    public boolean insertFavor(Favor favor);
    public boolean clickFavor(Favor favor);
}
