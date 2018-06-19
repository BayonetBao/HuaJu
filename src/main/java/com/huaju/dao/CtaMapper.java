package com.huaju.dao;

import com.huaju.entity.Cta;

import java.util.List;

public interface CtaMapper {

//    咨询师列表
    public List<Cta> AllCta();

    public Cta CtaByActivity(int ctaid);
    //按用户名查询咨询师(张宝)
    public Cta selectCtaByName(String ctaname);
}