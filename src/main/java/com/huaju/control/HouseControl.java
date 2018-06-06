package com.huaju.control;

import com.huaju.entity.House;
import com.huaju.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.w3c.dom.stylesheets.LinkStyle;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@RequestMapping("/houseInfo")
@Controller
public class HouseControl {

    @Autowired
    private HouseService houseService;



    //    表格列出house信息
    @RequestMapping(value = "/houseInfo.action", method = RequestMethod.GET)
    public void houseInfo(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
//          把从houseService获得的信息存到houselist中
        List<House> houses = houseService.selectHouseInfoZYJ();
        httpServletRequest.setAttribute("houselist", houses);
        httpServletRequest.getRequestDispatcher("/developer/houselistzyj.jsp").forward(httpServletRequest, httpServletResponse);
    }


//    house详细信息


    //添加house信息
    @RequestMapping(value = "/addHouseInfo", method = RequestMethod.POST)
    public void addHouseInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//         boolean house1=houseService.addHouseInfoZYJ(house);
//         request.setAttribute("addhouse" ,house1);
//         request.getRequestDispatcher("/developer/addinfo_housezyj.jsp").forward(request,response);
        String hname = request.getParameter("hname");
        String hmoney = request.getParameter("hmoney");
        String hperprice = request.getParameter("hperprice");
        String butypleid = request.getParameter("butypleid");
        String doorid = request.getParameter("doorid");
        String forward = request.getParameter("forward");
        String harea = request.getParameter("harea");
        String htype = request.getParameter("htype");
        String hsalestatus = request.getParameter("hsalestatus");
        String payment = request.getParameter("payment");
        String monthpay = request.getParameter("monthpay");
        String updatename=request.getParameter("updatename");

//                房型图
      String analysis = request.getParameter("analysis");
//      封装一个house对象
      House house=new House();
      house.setHname(hname);
      house.setHmoney(Double.parseDouble(hmoney));
      house.setHperprice(Double.parseDouble(hperprice));
      house.setButypeid(Integer.parseInt(butypleid));
      house.setDoorid(Integer.parseInt(doorid));
      house.setForward(forward);
//      house.setHarea(ha);
    }
    @RequestMapping(value = "/imgFile.action" ,method = RequestMethod.POST)
    public void imgFile(MultipartFile pic1,House house,HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
//       获取文件的名字
       String  filename=pic1.getOriginalFilename();
//       获得images在服务器上的绝对位置
        String imgfile=request.getServletContext().getRealPath("images");
//       文件的绝对位置
      String img=imgfile+"/"+filename;
//       封装成文件
       File file=new File(img);
//       将自己存储的图片上传到服务器上
        pic1.transferTo(file);
//        house.setPic("images/"+filename);
        request.getRequestDispatcher("/developer/index.jsp").forward(request,response);

    }




@RequestMapping(value = "/detailhouse.action" , method = RequestMethod.POST)
    public  void  showHouseAllInfo(int id, HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        House house=houseService.showHouseDoorAllInfo(id);
        House htype=houseService.showHouseTypeInfo(id);
        request.setAttribute("house",house);
        request.setAttribute("htype",htype);

        request.getRequestDispatcher("/developer/detialhousezyj.jsp").forward(request,response);

    }

@RequestMapping(value = "/remove.action", method = RequestMethod.GET)
    public void remove(HttpServletRequest  request,HttpServletResponse response) throws IOException {
    PrintWriter out = response.getWriter();
    try {
        String houseid= request.getParameter("houseid");
        houseService.removeHouse(Integer.parseInt(houseid));
        System.out.println("1");
        out.print("1");
    } catch (Exception e) {
        e.printStackTrace();
        out.print("0");
    }
    }







}