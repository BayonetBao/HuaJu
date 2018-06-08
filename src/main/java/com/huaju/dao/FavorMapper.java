package com.huaju.dao;

import com.huaju.entity.Favor;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FavorMapper {
    public List<Favor> selectFavor(Favor favor);
    public boolean deleteFavorByFavorid(Integer id);
    public boolean deleteFavorByUseridAndCommentid(Favor favor);
    public boolean insertFavor(Favor favor);

}