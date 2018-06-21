package com.huaju.service;

import com.huaju.dao.ActivityMapper;
import com.huaju.dao.BuildMapper;
import com.huaju.dao.CtaMapper;
import com.huaju.entity.Activity;
import com.huaju.entity.Build;
import com.huaju.entity.BuildQueryPojo;
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
