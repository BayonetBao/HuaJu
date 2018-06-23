package com.huaju.control;

import com.github.pagehelper.PageInfo;
import com.huaju.dao.BuildMapper;
import com.huaju.entity.*;
import com.huaju.service.ActivityService;
import com.huaju.service.BuildService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping(value = "/Activity")
@Controller
public class ActivityControl {


    @Autowired
    private ActivityService activityService;
    @Autowired
    private BuildService buildService;

    @Autowired
    private BuildMapper buildMapper;
    //后台
    @RequestMapping(value = "/selectAllActivityByQueryPojo.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void selectAllActivityByQueryPojo(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ActivityQueryPojo activityQueryPojo = new ActivityQueryPojo();
        Company com= (Company) session.getAttribute("user");
        activityQueryPojo.setComid(com.getComid());
        List<Build> blist=activityService.selectBuildInActivity(com.getComid());
        List<Cta> clist=activityService.AllCta();
        Map<String, Object> cmap=new HashMap<>();
        String scurPage = request.getParameter("curPage");
        String bid = request.getParameter("buildingid");
        String cid = request.getParameter("ctaid");
        if (bid != null && !bid.trim().equals("")) {
            Integer buildid = new Integer(bid);
            activityQueryPojo.setBuildingid(buildid);
            //dynamicQueryPojo.setBuildingid(buildid);
        }
        if (cid != null && !cid.trim().equals("")){
            Integer ctaid = new Integer(cid);
            activityQueryPojo.setCtaid(ctaid);
        }
        cmap.put("activityQueryPojo",activityQueryPojo);
        //cmap.put("dynamicQueryPojo",dynamicQueryPojo);
        int pageSize = 5;
        //当前的页面默认是首页
        int curPage = 1;

        if (scurPage != null && !scurPage.trim().equals("")) {
            curPage = Integer.parseInt(scurPage);
        }
        cmap.put("pageSize", pageSize);
        cmap.put("curPage",curPage);
        PageInfo<Activity> pageInfo = activityService.selectActivityByBuildAndCta(cmap);
        request.setAttribute("blist",blist);
        request.setAttribute("clist",clist);
        request.setAttribute("pageInfo",pageInfo);
        request.setAttribute("activityQueryPojo",activityQueryPojo);
        request.getRequestDispatcher("/developer/activitytList.jsp").forward(request,response);
//        PageInfo<Dynamic> pageInfo = dynamicService.selectDynamicByBuild(cmap);
//        request.setAttribute("blist",blist);
//        request.setAttribute("pageInfo", pageInfo);
//        request.setAttribute("dynamicQueryPojo",dynamicQueryPojo);
//        request.getRequestDispatcher("/developer/dynamicList.jsp").forward(request, response);
    }

    @RequestMapping(value = "/insertActivityBefore.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void insertActivityBefore(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Company com= (Company) session.getAttribute("user");
        BuildQueryPojo buildQueryPojo=new BuildQueryPojo();
        buildQueryPojo.setComid(com.getComid());
        List<Build> blist=buildMapper.selectBuildQueryPojo(buildQueryPojo);
        List<Cta> ctas = activityService.AllCta();
        request.setAttribute("blist",blist);
        request.setAttribute("clist",ctas);
        request.getRequestDispatcher("/developer/addactivity.jsp").forward(request,response);
    }
    @RequestMapping(value = "insertActivityAfter.action",method = {RequestMethod.POST,RequestMethod.GET})
    public String insertActivityAfter(Activity activity,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException, ParseException {
        Integer activityAddNumber = activity.getBuildingid();
        String result;
        request.setAttribute("activityAddNumber",activityAddNumber);
        if(activityService.AddActivity(activity)){
            result="sucess";
            System.out.println(1111);
        }else{
            result= "error";
            System.out.println(2222);
        }
        return  result;
    }
    @RequestMapping(value = "selectactivity.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void selectactivity(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        Integer id=Integer.parseInt(request.getParameter("id"));
        Activity activity=activityService.selectActivity(id);
        request.setAttribute("activity",activity);
        request.getRequestDispatcher("/developer/Activityinfo.jsp").forward(request,response);
    }
    //前台查询
    //查询全部活动
    @RequestMapping(value = "/selectAllActivityQueryPojo.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void selectBuildQueryPojo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BuildQueryPojo buildQueryPojo=new BuildQueryPojo();
        ActivityQueryPojo activityQueryPojo = new ActivityQueryPojo();
        Map<String,Object> cmap=new HashMap<>();
        List<Company> companies=buildService.selectCompanyInBuild();

        cmap.put("activityQueryPojo",activityQueryPojo);
        int pageSize =3;
        int curPage = 1;
        String scurPage = request.getParameter("curPage");
        if (scurPage != null && !scurPage.trim().equals("")) {
            curPage = Integer.parseInt(scurPage);
        }
        cmap.put("pageSize", pageSize);
        cmap.put("curPage",curPage);
        PageInfo<Activity> pageInfo = activityService.selectActivityByBuildAndCta(cmap);
        request.setAttribute("pageInfo", pageInfo);
        request.setAttribute("companies",companies);
        request.setAttribute("activityQueryPojo",activityQueryPojo);
        request.getRequestDispatcher("/user/fei/buildactivity.jsp").forward(request,response);
    }
    //根据楼盘id查询活动
    @RequestMapping(value = "/selectBuildActivity.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void selectBuildActivity(int buildingid,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        Activity activity = activityService.selectBuildActivity(buildingid);
        List<Build> builds = activityService.selectBuilding();

        Build build = buildService.selectBuildById(buildingid);
        request.setAttribute("builds",builds);
        request.setAttribute("build",build);
        request.setAttribute("activity",activity);
        request.getRequestDispatcher("/user/fei/activity.jsp").forward(request,response);
    }
}
