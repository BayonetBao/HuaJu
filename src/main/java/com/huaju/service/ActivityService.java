package com.huaju.service;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.*;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface ActivityService {
    public PageInfo<Activity> selectActivityByBuildAndCta(Map<String,Object> map);

    public List<Build> selectBuildInActivity(Integer comid);

    public boolean AddActivity(Activity activity);

    public Activity selectActivity(Integer id);
//咨询师列表
    public List<Cta> AllCta();


    public List<Build> selectBuilding();

    public List<Build> selectBuildQueryPojo(BuildQueryPojo buildQueryPojo);
}
