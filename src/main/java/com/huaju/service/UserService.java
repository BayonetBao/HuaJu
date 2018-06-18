package com.huaju.service;

import com.huaju.entity.User;

public interface UserService {
    //更新用户 珂
    public  boolean updateUser(User user);
    //修改密码 珂
    public  boolean updatePassword(User user);
    //修改头像
    public  boolean updatePic(User user);
}
