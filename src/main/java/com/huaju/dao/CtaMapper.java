package com.huaju.dao;

import com.huaju.entity.Cta;

import java.util.List;

public interface CtaMapper {

//    咨询师列表
    public List<Cta> AllCta();

    public Cta CtaByActivity(int ctaid);
    //按用户名查询咨询师(张宝)
    public Cta selectCtaByName(String ctaname);
    //添加咨询师(张宝)
    public boolean addCta(Cta cta);
    //按楼盘id查询咨询师(张宝)
    public Cta seletCtaByBuildingid(int buildingid);

    //    添加咨询师ZYJ
    public boolean addAllCta(Cta cta);

    //    根据开发商id列出咨询师信息ZYJ
    public List<Cta> showAllInfoCta(int comid);
//    根据咨询师id查出咨询师详情页ZYJ
    public Cta showDetialCta(int ctaid);

//    删除咨询师信息ZYJ
    public boolean deleteCta(int ctaid);

//    修改咨询师信息ZYJ
    public void updateCtaInfo(Cta cta);
}