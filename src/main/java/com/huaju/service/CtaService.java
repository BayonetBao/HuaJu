package com.huaju.service;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Cta;

import java.util.Map;

public interface CtaService {
    //咨询师列表,第三方分页框架
    public PageInfo<Cta> AllCta(Map<String,Object> map);
    //添加咨询师(张宝)
    public boolean addCta(Cta cta);
}
