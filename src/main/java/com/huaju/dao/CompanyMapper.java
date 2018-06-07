package com.huaju.dao;

import com.huaju.entity.Company;

public interface CompanyMapper {
    //开发商注册
    public boolean setCompany(Company company);
    //按用户名查找（张宝）
    public Company selectCompanyByName(String comname);
}