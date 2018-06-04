package com.huaju.control;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Dynamic;
import com.huaju.service.DynamicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class DynamicControl {
    @Autowired
    private DynamicService dynamicService;
    @RequestMapping(value = "selectAllDynamicByQueryPojo",method = RequestMethod.POST)
    public void selectAllDynamicByQueryPojo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, Object> cmap=new HashMap<>();
        String id = request.getParameter("buildingid");
        Integer buildid;
        if (id != null && !id.trim().equals("")) {
            buildid = new Integer(id);
            cmap.put("buildid",buildid);
        }

        int pageSize = 7;
        //当前的页面默认是首页
        int curPage = 1;
        String scurPage = request.getParameter("curPage");
        if (scurPage != null && !scurPage.trim().equals("")) {
            curPage = Integer.parseInt(scurPage);
        }
        cmap.put("pageSize", pageSize);
        cmap.put("curPage",curPage);
        PageInfo<Dynamic> pageInfo = dynamicService.selectDynamicByBuild(cmap);
        request.setAttribute("pageInfo", pageInfo);
        request.setAttribute("buildid", id);
        request.getRequestDispatcher(request.getContextPath()+"/developer/dynamicList.jsp").forward(request, response);
    }
    @RequestMapping(value = "insertDynamicBefore")
    public void insertDynamicBefore(){

    }
}
