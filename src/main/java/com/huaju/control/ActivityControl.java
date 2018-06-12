package com.huaju.control;

import com.huaju.entity.*;
import com.huaju.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RequestMapping(value = "/Activity")
@Controller
public class ActivityControl {


    @Autowired
    private ActivityService activityService;
    @RequestMapping(value = "/selectctaandbuild.action",method = RequestMethod.GET)
    public void selectBuild(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        List<Cta> ctas = activityService.AllCta();

        List<Build> builds = activityService.selectBuilding();
        //List<Build> builds = activityService.selectBuildQueryPojo(1);
        request.setAttribute("ctas",ctas);
        request.setAttribute("builds",builds);

        request.getRequestDispatcher("/developer/addactivity.jsp").forward(request,response);
    }

    @RequestMapping(value = "/addActivity.action",method = RequestMethod.POST)
    public void AddActivty(Activity activity, HttpServletRequest request, HttpServletResponse response){
        activityService.AddActivity(activity);

    }
    @RequestMapping(value = "/activityList.action",method = RequestMethod.GET)
    public void ActivityList(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        List<Activity> activities = activityService.ActivityList();

        List<Cta> ctas = activityService.AllCta();

        List<Build> builds = activityService.selectBuilding();

        request.setAttribute("activities",activities);

        request.setAttribute("ctas",ctas);

        request.setAttribute("builds",builds);
        request.getRequestDispatcher("/developer/activitytList.jsp").forward(request,response);
    }
    @RequestMapping(value = "activityBybuild.action",method = RequestMethod.GET)
    public void ActivityByBuild(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String build = request.getParameter("buildingid");

        List<Activity> activities = activityService.selectActivityByBuild(Integer.parseInt(build));

        List<Cta> ctas = activityService.AllCta();

        List<Build> builds = activityService.selectBuilding();

        request.setAttribute("activities",activities);

        request.setAttribute("ctas",ctas);

        request.setAttribute("builds",builds);
        request.getRequestDispatcher("/developer/activityList.jsp").forward(request,response);
    }
    @RequestMapping(value = "activityBycta.action",method = RequestMethod.GET)
    public void ActivityByCta(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {


        String cta = request.getParameter("ctaid");
        List<Activity> activities = activityService.selectActivityByCta(Integer.parseInt(cta));

        List<Cta> ctas = activityService.AllCta();

        List<Build> builds = activityService.selectBuilding();

        request.setAttribute("activities",activities);

        request.setAttribute("ctas",ctas);

        request.setAttribute("builds",builds);
        request.getRequestDispatcher("/developer/activityList.jsp").forward(request,response);
    }

}
