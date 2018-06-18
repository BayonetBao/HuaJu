package com.huaju.dao;

import com.huaju.entity.User;

public interface UserMapper {
    //注册用户(张宝)
    public boolean setUser( User user);
//    按用户名查找（张宝）
    public User selectUserByName(String name);
    //更新用户 珂
    public  boolean updateUser(User user);
    //修改密码 珂
    public  boolean updatePassword(User user);
    //更改头像
    public  boolean updatePic(User user);
}