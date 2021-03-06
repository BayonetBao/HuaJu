package com.huaju.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.CtaMapper;
import com.huaju.entity.Cta;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class CtaServiceImpl implements CtaService{
    @Autowired
    private SqlSessionFactory factory;
    @Autowired
    private CtaMapper ctaMapper;
    @Override
    public PageInfo<Cta> AllCta(Map<String, Object> map) {
        SqlSession sqlSession=factory.openSession();
        CtaMapper mapper=sqlSession.getMapper(CtaMapper.class);
//        当前页面
        int curPage=(int) map.get("curPage");
//        查询的条数
        int pageSize= (int) map.get("pageSize");
//        将下面语句拦截，添加limit分页
        Page page= PageHelper.startPage(curPage,pageSize);
//        将多个条件合并成map传递给dao层
        List<Cta> list=mapper.AllCta();
//        PageInfo 相当于我们自己封装的PageInfo
        PageInfo<Cta> pageInfo=new PageInfo<Cta>(list);

        return pageInfo;
    }
    @Override
    //添加咨询师(张宝)
    public boolean addCta(Cta cta){
        return ctaMapper.addCta(cta);
    }

    @Override
    //按楼盘id查询咨询师(张宝)
    public Cta seletCtaByBuildingid(int buildingid){
        return ctaMapper.seletCtaByBuildingid(buildingid);
    }

    @Override
    //查询所有咨询师
    public List<Cta> selectAllCta(){
        return ctaMapper.AllCta();
    }

//添加咨询师ZYJ
    @Override
    public boolean addAllCta(Cta cta) {
        return ctaMapper.addAllCta(cta);
    }

    @Override
    public List<Cta> showAllInfoCta(int comid) {
        return ctaMapper.showAllInfoCta(comid);
    }
    //    根据咨询师id查出咨询师详情页ZYJ
    @Override
    public Cta showDetialCta(int ctaid) {
        return ctaMapper.showDetialCta(ctaid);
    }
    //    删除咨询师信息ZYJ
    @Override
    public boolean deleteCta(int ctaid) {
        return ctaMapper.deleteCta(ctaid);
    }
    //    修改咨询师信息ZYJ
    @Override
    public void updateCtaInfo(Cta cta) {
        ctaMapper.updateCtaInfo(cta);
    }


    @Override
    public Cta selectCtaById(Integer ctaid) {
        return ctaMapper.selectCtaById(ctaid);
    }
}
