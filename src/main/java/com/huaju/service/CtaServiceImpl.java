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
}
