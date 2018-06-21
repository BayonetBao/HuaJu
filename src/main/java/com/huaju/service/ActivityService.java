package com.huaju.service;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Activity;
import com.huaju.entity.Build;
import com.huaju.entity.BuildQueryPojo;
import com.huaju.entity.Cta;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface ActivityService {
//咨询师列表
    public List<Cta> AllCta();
    public List<Build> selectBuilding();
    public List<Build> selectBuildQueryPojo(BuildQueryPojo buildQueryPojo);
}
