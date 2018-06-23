package com.huaju.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.ActivityMapper;
import com.huaju.dao.BuildMapper;
import com.huaju.dao.CtaMapper;
import com.huaju.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class ActivityServiceImpl implements ActivityService {

    @Autowired
    private ActivityMapper activityMapper;

    @Autowired
    private BuildMapper buildMapper;

    @Autowired
    private CtaMapper ctaMapper;


    @Override
    public PageInfo<Activity> selectActivityByBuildAndCta(Map<String, Object> map) {
        ActivityQueryPojo activityQueryPojo = (ActivityQueryPojo) map.get("activityQueryPojo");
        int curPage=(int)map.get("curPage");
        int pageSize=(int) map.get("pageSize");
        Page page= PageHelper.startPage(curPage,pageSize);
        List<Activity> activities=activityMapper.SelectAllActivity(activityQueryPojo);
        PageInfo<Activity> pageInfo = new PageInfo<>(activities);
        return pageInfo;
    }

    @Override
    public Activity selectBuildActivity(Integer buildingid) {
        return activityMapper.selectBuildActivity(buildingid);
    }

    @Override
    public List<Build> selectBuildInActivity(Integer comid) {
        return activityMapper.selectBuildInActivity(comid);
    }

    @Override
    public boolean AddActivity(Activity activity) {
       return activityMapper.AddActivity(activity);
    }

    @Override
    public Activity selectActivity(Integer id) {
        return activityMapper.selectActivity(id);
    }

    //咨询师列表
    @Override
    public List<Cta> AllCta() {
        return ctaMapper.AllCta();
    }

    @Override
    public List<Build> selectBuilding() {
        return buildMapper.selectBuilding();
    }

    @Override
    public List<Build> selectBuildQueryPojo(BuildQueryPojo buildQueryPojo) {
        return buildMapper.selectBuildQueryPojo(buildQueryPojo);
    }

}
