package com.huaju.control;

import com.huaju.entity.BuildType;
import com.huaju.entity.House;
import com.huaju.service.BuildTypeService;
import com.huaju.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/buildType")
public class BuildTypeControl {

    @Autowired
    private BuildTypeService buildTypeService;

    @Autowired
    private HouseService houseService;


//    获得house的总数  全部（n）
@RequestMapping(value = "/buildType.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void sumHouse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//获得楼盘id
    String buildingid = request.getParameter("buildingid");

//    System.out.println("buildingid" + buildingid);
    Integer id1 = new Integer(buildingid);
    String typeid = request.getParameter("typeid");
    //       得到house的总数  全部（n）
    int sumhouse = buildTypeService.sumHouse(id1);
    request.setAttribute("sumhouse", sumhouse);
//   查询house的各个居室的总数 1居（n） 2居（m）
    List<BuildType> buildTypes = buildTypeService.selectTypeCount(id1);
    request.setAttribute("buildTypes", buildTypes);
    List<House> houses = new ArrayList<>();
    if (typeid == null) {
        //    全部（n）的楼房信息
        houses = houseService.showHouseList(id1);
    } else{
        houses = buildTypeService.showhouse2(Integer.parseInt(typeid), Integer.parseInt(buildingid));
    }
    request.setAttribute("buildingid",buildingid);
    request.setAttribute("houses", houses);

//    System.out.println(buildingid+"222222");

    request.getRequestDispatcher("/user/bao/houselist.jsp").forward(request, response);
}

//前台house详情页
    @RequestMapping(value = "houselist.action",method =RequestMethod.GET)
    public void houselist(String houseid,String buildingid,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String buildingid1 = request.getParameter("buildingid");
//        System.out.println(buildingid1+"_________IJOJn");
        //       得到house的总数  全部（n）
        int di1=Integer.parseInt(buildingid1);
        int sumhouse = buildTypeService.sumHouse(di1);
        request.setAttribute("sumhouse", sumhouse);
//   查询house的各个居室的总数 1居（n） 2居（m）
        List<BuildType> buildTypes = buildTypeService.selectTypeCount(Integer.parseInt(buildingid));
        request.setAttribute("buildTypes", buildTypes);
//        house详情页
        House house=houseService.showHouseDoorAllInfo(Integer.parseInt(houseid));
        request.setAttribute("house",house);
//        拿到楼盘id
        request.setAttribute("buildingid",buildingid);
        request.getRequestDispatcher("/user/bao/houseAnalysis.jsp").forward(request,response);
    }




}
