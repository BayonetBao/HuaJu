package com.huaju.control;

import com.huaju.entity.Build;
import com.huaju.entity.Cta;
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
    @RequestMapping(value = "/selectctaandbuild.action",method = RequestMethod.POST)
    public void selectBuild(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        List<Cta> ctas = activityService.AllCta();

        List<Build> builds = activityService.selectBuilding();

        request.setAttribute("ctas",ctas);
        request.setAttribute("builds",builds);

        request.getRequestDispatcher("/developer/addactivity.jsp").forward(request,response);
    }

    @RequestMapping(value = "/addActivity.action",method = RequestMethod.POST)
    public void AddActivty(HttpServletRequest request, HttpServletResponse response){

    }


}