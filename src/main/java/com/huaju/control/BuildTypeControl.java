package com.huaju.control;

import com.huaju.entity.BuildType;
import com.huaju.entity.House;
import com.huaju.service.BuildTypeService;
import com.huaju.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping(value = "/buildType")
public class BuildTypeControl {

    @Autowired
    private BuildTypeService buildTypeService;

    @Autowired
    private HouseService houseService;


//    获得house的总数  全部（n）
@RequestMapping(value = "/buildType.action",method = RequestMethod.GET)
    public void sumHouse( String buildingid,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//获得楼盘id
        int id1=Integer.parseInt(buildingid);
    //       得到house的总数  全部（n）
        int sumhouse=buildTypeService.sumHouse(id1);
        System.out.println("全部："+sumhouse);
        request.setAttribute("sumhouse",sumhouse);


//   查询house的各个居室的总数 1居（n） 2居（m）
         List<BuildType> buildTypes=buildTypeService.selectTypeCount(id1);
         request.setAttribute("buildTypes",buildTypes);
         System.out.println(buildTypes);


    //    全部（n）的楼房信息
         List<House> houses=houseService.showHouseList(id1);
         request.setAttribute("houses",houses);

         request.getRequestDispatcher("/user/bao/houselist.jsp").forward(request,response);

    }

//前台house详情页
    @RequestMapping(value = "houselist.action",method =RequestMethod.GET)
    public void houselist(String houseid,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        House house=houseService.showHouseDoorAllInfo(Integer.parseInt(houseid));
        request.setAttribute("house",house);
        request.getRequestDispatcher("/user/bao/houseAnalysis.jsp").forward(request,response);
    }




}
