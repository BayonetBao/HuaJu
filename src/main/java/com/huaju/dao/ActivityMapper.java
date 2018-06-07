package com.huaju.dao;

import com.huaju.entity.Activity;

import java.util.Date;
import java.util.List;

public interface ActivityMapper {

    public List<Activity> ActivityList();

    public void AddActivity(Activity activity);

    public List<Activity> selectActivityByBuild(int id);

    public List<Activity> selectActivityByCta(int id);

    public List<Activity> selectActivityByTime(Date Actime);

    public Activity selecttotal(int id);



}