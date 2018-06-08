package com.huaju.control;

import com.huaju.entity.BuildType;
import com.huaju.entity.Door;
import com.huaju.entity.House;

import com.huaju.service.BuildTypeService;
import com.huaju.service.DoorService;
import com.huaju.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;


@RequestMapping("/houseInfo")
@Controller
public class HouseControl {

    @Autowired
    private HouseService houseService;
    @Autowired
    private DoorService doorService;
    @Autowired
    private BuildTypeService buildTypeService;

    //    表格列出house信息
    @RequestMapping(value = "/houseInfo.action", method = RequestMethod.GET)
    public void houseInfo(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
//          把从houseService获得的信息存到houselist中
        List<House> houses = houseService.selectHouseInfoZYJ();
        httpServletRequest.setAttribute("houselist", houses);
        httpServletRequest.getRequestDispatcher("/developer/houselistzyj.jsp").forward(httpServletRequest, httpServletResponse);
    }

////  添加页面列出户型下拉框ABCD
//    @RequestMapping(value = "/doorlist.action",method = RequestMethod.POST)
//    public void showDoorInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Door door=doorService.showAllDoorInfo();
//        request.setAttribute("door",door);
//        request.getRequestDispatcher("/developer/addinfo_housezyj.jsp").forward(request,response);
//    }
//
////    添加页面显示出居室下拉框   几居
//    public void  showBuildTypeInfo(int id, HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
//        BuildType buildType=buildTypeService.showBuildTypeInfo(id);
//        request.setAttribute("btype",buildType);
//        request.getRequestDispatcher("developer/addinfo_housezyj.jsp").forward(request,response);
//
//    }


    @RequestMapping(value = "/addHouseInfo.action", method = RequestMethod.GET)
    public ModelAndView uoloadImageList(int id,HttpServletRequest request, HttpServletResponse response,MultipartFile file) throws Exception{
        saveFile(id,request,response,file);
        ModelAndView model = new ModelAndView();
        model.addObject("message",model);
        model.setViewName("result");
        return model;
    }
    private void saveFile(int id,HttpServletRequest request,HttpServletResponse response, MultipartFile file) {
        InputStream is = null;
        OutputStream os = null;
        if(!file.isEmpty()){
            try {
                is = file.getInputStream();

                String uploadPath="/developer/main/images";
                String realUploadPath=request.getSession().getServletContext().getRealPath(uploadPath);

                String des = realUploadPath+ "/"+file.getOriginalFilename();

                String houseid=request.getParameter("houseid");
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
//                String updatename=request.getParameter("updatename");
//                String analysis = request.getParameter("analysis");

//      封装一个house对象
                House house =new House();
                house.setHouseid(Integer.parseInt(houseid));
                house.setHname(hname);
                house.setHmoney(Double.parseDouble(hmoney));
                house.setHperprice(Double.parseDouble(hperprice));
                house.setButypeid(Integer.parseInt(butypleid));
                house.setDoorid(Integer.parseInt(doorid));
                house.setForward(forward);
                house.setHarea(Double.valueOf(harea));
                house.setHtype(htype);
                house.setHsalestatus(hsalestatus);
                house.setPayment(Double.valueOf(payment));
                house.setMonthpay(Double.valueOf(monthpay));
                // house.setUpdatename(updatename);
                house.setHtypeimg(uploadPath+ "/"+file.getOriginalFilename());

                houseService.addHouseInfoZYJ(house);


                //    添加页面显示出居室下拉框   几居
                    BuildType buildType= (BuildType) buildTypeService.showBuildTypeInfo(id);
                    request.setAttribute("buildtype", buildType);
                //  添加页面列出户型下拉框ABCD
                Door door=doorService.showAllDoorInfo();
                request.setAttribute("door",door);


                request.getRequestDispatcher("/developer/houselistzyj.jsp").forward(request, response);
                System.err.println(des);
                os = new FileOutputStream(des);
                byte[] buffer = new byte[1024];
                int len = 0;

                while((len = is.read(buffer))>0){
                    os.write(buffer);
                }

            } catch (Exception e) {
                e.getStackTrace();
            }finally{
                if(is!=null){
                    try{
                        is.close();
                    }catch (Exception e2){
                        e2.printStackTrace();
                    }finally{
                        if(os!=null){
                            try{
                                os.close();
                            }catch (Exception e2){
                                e2.printStackTrace();
                            }
                        }
                    }
                }

            }

        }
    }


    //    house详细信息
@RequestMapping(value = "/detailhouse.action" , method = RequestMethod.GET)
    public  void  showHouseAllInfo(String id, HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
       int idd=Integer.parseInt(id);
        House house=houseService.showHouseDoorAllInfo(idd);
        House htype=houseService.showHouseTypeInfo(idd);
        request.setAttribute("house",house);
        request.setAttribute("htype",htype);
        request.getRequestDispatcher("/developer/detialhousezyj.jsp").forward(request,response);

    }

//删除信息
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