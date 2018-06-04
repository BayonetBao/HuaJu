package com.huaju.service;

import com.huaju.entity.Company;
import com.huaju.entity.User;
//张宝
public interface AllUserService {
    //用户注册
    public void setUser(User user);
    //    按用户名查找
    public User selectUserByName(String name);
    //按开发商姓名查找
    public Company selectCompanyByName(String comname);
}
