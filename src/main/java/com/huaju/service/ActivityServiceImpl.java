package com.huaju.service;

import com.huaju.dao.ActivityMapper;
import com.huaju.dao.BuildMapper;
import com.huaju.dao.CtaMapper;
import com.huaju.entity.Activity;
import com.huaju.entity.Build;
import com.huaju.entity.Cta;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ActivityServiceImpl implements ActivityService {

    @Autowired
    private ActivityMapper activityMapper;

    @Autowired
    private BuildMapper buildMapper;

    @Autowired
    private CtaMapper ctaMapper;

    @Override
    public List<Activity> ActivityList() {
        return activityMapper.ActivityList();
    }

    @Override
    public void AddActivity(Activity activity) {
        activityMapper.AddActivity(activity);
    }

    @Override
    public List<Activity> selectActivityByBuild(int id) {
        return activityMapper.selectActivityByBuild(id);
    }

    @Override
    public List<Activity> selectActivityByCta(int id) {
        return activityMapper.selectActivityByCta(id);
    }

    @Override
    public List<Activity> selectActivityByTime(Date Actime) {
        return activityMapper.selectActivityByTime(Actime);
    }

    @Override
    public Activity selecttotal(int id) {
        return activityMapper.selecttotal(id);
    }

    @Override
    public List<Cta> AllCta() {
        return ctaMapper.AllCta();
    }

    @Override
    public List<Build> selectBuilding() {
        return buildMapper.selectBuilding();
    }

}
