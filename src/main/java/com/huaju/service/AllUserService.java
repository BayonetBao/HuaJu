package com.huaju.service;

import com.huaju.entity.Company;
import com.huaju.entity.Cta;
import com.huaju.entity.User;
//张宝
public interface AllUserService {
    //用户注册
    public boolean setUser(User user);
    //  按用户名查找
    public User selectUserByName(String name);
    //按开发商姓名查找
    public Company selectCompanyByName(String comname);
    //开发商注册
    public boolean setCompany(Company company);
    //按id查找（张宝）
    public Company selectCompanyById(int comid );
    //按用户名查询咨询师(张宝)
    public Cta selectCtaByName(String ctaname);
}
