package com.huaju.dao;

import com.huaju.entity.Activity;
import com.huaju.entity.ActivityQueryPojo;
import com.huaju.entity.Build;
import com.huaju.entity.Cta;

import java.util.Date;
import java.util.List;

public interface ActivityMapper {

    public List<Activity> SelectAllActivity(ActivityQueryPojo activityQueryPojo);

    public List<Build> selectBuildInActivity(Integer comid);

    public boolean AddActivity(Activity activity);

    public Activity selectActivity(Integer id);

}