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
    public List<Activity> ActivityList();

    public void AddActivity(Activity activity);

    public List<Activity> selectActivityByBuild(int id);

    public List<Activity> selectActivityByCta(int id);

    public List<Activity> selectActivityByTime(Date Actime);

    public Activity selecttotal(int id);
//咨询师列表
    public List<Cta> AllCta();


    public List<Build> selectBuilding();

    public List<Build> selectBuildQueryPojo(BuildQueryPojo buildQueryPojo);
}
