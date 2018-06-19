package com.huaju.control;

import com.github.pagehelper.PageInfo;
import com.huaju.dao.BuildMapper;
import com.huaju.dao.DynamicMapper;
import com.huaju.entity.*;
import com.huaju.service.BuildService;
import com.huaju.service.DynamicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@RequestMapping(value = "/dynamic")
@RestController
public class DynamicControl {
    @Autowired
    private DynamicService dynamicService;
    @Autowired
    private  DynamicMapper dynamicMapper;
    @Autowired
    private BuildMapper buildMapper;
    @Autowired
    private  BuildService buildService;

    @RequestMapping(value = "selectAllDynamicByQueryPojo.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void selectAllDynamicByQueryPojo(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DynamicQueryPojo dynamicQueryPojo=new DynamicQueryPojo();
        Company com= (Company) session.getAttribute("user");
        dynamicQueryPojo.setComid(com.getComid());
        List<Build> blist=dynamicService.selectBuildingInDynamic(com.getComid());
        Map<String, Object> cmap=new HashMap<>();
        String scurPage = request.getParameter("curPage");
        String id = request.getParameter("buildingid");
        if (id != null && !id.trim().equals("")) {
           Integer buildid = new Integer(id);
            dynamicQueryPojo.setBuildingid(buildid);
        }
       cmap.put("dynamicQueryPojo",dynamicQueryPojo);
        int pageSize = 5;
        //当前的页面默认是首页
        int curPage = 1;

        if (scurPage != null && !scurPage.trim().equals("")) {
            curPage = Integer.parseInt(scurPage);
        }
        cmap.put("pageSize", pageSize);
        cmap.put("curPage",curPage);
        PageInfo<Dynamic> pageInfo = dynamicService.selectDynamicByBuild(cmap);
        request.setAttribute("blist",blist);
        request.setAttribute("pageInfo", pageInfo);
        request.setAttribute("dynamicQueryPojo",dynamicQueryPojo);
        request.getRequestDispatcher("/developer/dynamicList.jsp").forward(request, response);
    }
    @RequestMapping(value = "selectDynamicByBuild.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void selectDynamicByBuild(DynamicQueryPojo dynamicQueryPojo,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        dynamicQueryPojo.setBuildingid(dynamicQueryPojo.getBuildingid());
        List<Dynamic> dynamics=dynamicMapper.selectAllDynamicByQueryPojo(dynamicQueryPojo);
        request.setAttribute("dynamics",dynamics);
        request.getRequestDispatcher("/user/ke/dynamic.jsp").forward(request,response);
    }
    @RequestMapping(value = "selectAllDynamicByBuild.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void selectAllDynamicByBuild(DynamicQueryPojo dynamicQueryPojo,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        dynamicQueryPojo.setBuildingid(dynamicQueryPojo.getBuildingid());
        Build build=buildService.selectBuildById(dynamicQueryPojo.getBuildingid());
        List<Dynamic> dynamics=dynamicMapper.selectAllDynamicByQueryPojo(dynamicQueryPojo);
        request.setAttribute("dynamics",dynamics);
        request.setAttribute("build",build);
        request.getRequestDispatcher("/user/ke/buildDynamic.jsp").forward(request,response);
    }
      @RequestMapping(value = "insertDynamicBefore.action",method = {RequestMethod.POST,RequestMethod.GET})
      public void insertDynamicBefore(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Company com= (Company) session.getAttribute("user");
        BuildQueryPojo buildQueryPojo=new BuildQueryPojo();
        buildQueryPojo.setComid(com.getComid());
        List<Build> blist=buildMapper.selectBuildQueryPojo(buildQueryPojo);
          request.setAttribute("blist",blist);
          request.getRequestDispatcher("/developer/dynamicAdd.jsp").forward(request,response);
    }
    @RequestMapping(value = "insertDynamicAfter.action",method = {RequestMethod.POST,RequestMethod.GET})
    public String insertDynamicAfter(Dynamic dynamic,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException, ParseException {
;      Integer dynamicAddNumber=dynamic.getBuildingid();
        String result;
        request.setAttribute("dynamicAddNumber",dynamicAddNumber);
        if(dynamicService.insertDynamic(dynamic)){
            result="sucess";
        }else{
            result= "error";
        }
        return  result;
    }
    @RequestMapping(value = "deleteDynamicById.action",method = {RequestMethod.POST,RequestMethod.GET})
    public String deleteDynamicById(HttpServletRequest request,HttpServletResponse response){
        Integer id=Integer.parseInt(request.getParameter("id"));
        String result;
        if(dynamicService.deleteDynamic(id)) {
            result= "success";
        }else{
            result= "error";
        }
        return result;
    }

    @RequestMapping(value = "dynamicUpdateBefore.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void dynamicUpdateBefore(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        Integer id=Integer.parseInt(request.getParameter("id"));
        Dynamic dynamic=dynamicService.selectDynamicById(id);
        request.setAttribute("dynamic",dynamic);
        request.getRequestDispatcher("/developer/dynamicUpdate.jsp").forward(request,response);
    }
    @RequestMapping(value = "dynamicUpdateAfter.action" ,method =  {RequestMethod.POST,RequestMethod.GET})
    public void dynamicUpdateAfter(Dynamic dynamic,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String result;
        if(dynamicService.updateDynamic(dynamic)){
            request.getRequestDispatcher("/dynamic/selectAllDynamicByQueryPojo.action").forward(request,response);
        }else{
            request.getRequestDispatcher("/developer/erro.jsp").forward(request,response);
        }
    }
}
