package com.huaju.service;

import com.huaju.dao.CompanyMapper;
import com.huaju.dao.CtaMapper;
import com.huaju.dao.UserMapper;
import com.huaju.entity.Company;
import com.huaju.entity.Cta;
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
    @Autowired
    private CtaMapper ctaMapper;
    //注册用户
    @Override
    public boolean setUser(User user) {
        return userMapper.setUser(user);
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

    @Override
    public boolean setCompany(Company company) {

        return companyMapper.setCompany(company);
    }
    //按id查找（张宝）
    @Override
    public Company selectCompanyById(int comid) {
        return companyMapper.selectCompanyById(comid);
    }
    //按用户名查询咨询师(张宝)
    @Override
    public Cta selectCtaByName(String ctaname){
        return ctaMapper.selectCtaByName(ctaname);
    }
}
