package com.huaju.service;

import com.huaju.dao.CompanyMapper;
import com.huaju.dao.UserMapper;
import com.huaju.entity.Company;
import com.huaju.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//张宝
@Service
public class AllUserServiceImpl implements AllUserService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private CompanyMapper companyMapper;
    //注册用户
    @Override
    public void setUser(User user) {
        userMapper.setUser(user);
    }
    // 按用户名查找
    @Override
    public User selectUserByName(String name) {
        return userMapper.selectUserByName(name);
    }
    //按开发商姓名查找
    @Override
    public Company selectCompanyByName(String comname){
        return companyMapper.selectCompanyByName(comname);
    }
}
