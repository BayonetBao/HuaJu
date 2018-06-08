package com.huaju.dao;

import com.huaju.entity.User;

public interface UserMapper {
    //注册用户(张宝)
    public boolean setUser( User user);
//    按用户名查找（张宝）
    public User selectUserByName(String name);
}