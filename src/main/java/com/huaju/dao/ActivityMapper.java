package com.huaju.dao;

import com.huaju.entity.Activity;
import com.huaju.entity.ActivityQueryPojo;

import java.util.Date;
import java.util.List;

public interface ActivityMapper {
    public List<Activity> SelectAllActivity(ActivityQueryPojo activityQueryPojo);

}