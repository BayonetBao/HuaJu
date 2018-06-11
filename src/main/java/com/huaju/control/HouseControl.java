package com.huaju.control;

import com.huaju.entity.BuildType;
import com.huaju.entity.Door;
import com.huaju.entity.House;

import com.huaju.entity.Type;
import com.huaju.service.BuildTypeService;
import com.huaju.service.DoorService;
import com.huaju.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import sun.awt.geom.AreaOp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static org.apache.tools.ant.types.resources.MultiRootFileSet.SetType.file;

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




@RequestMapping("/update.action")
    public void updatehouse(int id , HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        House house=houseService.getHouse(id);
        House doorinfo=houseService.perDoorInfo(id);
    House htype=houseService.showHouseTypeInfo(id);
    System.out.println(doorinfo);
    System.out.println(house);
            System.out.println(house.getAnalysis()+"========");
            if (house!=null){
                request.setAttribute("doorifo",doorinfo);
                 request.setAttribute("house" , house);

                request.setAttribute("htype",htype);
            request.getRequestDispatcher("/developer/Updatehouse.jsp").forward(request,response);
        }else {
//                商品不存在
        }
    }



//更改商品信息
@RequestMapping(value = "/updateTrue.action",method = RequestMethod.POST)
public void updateTrue(MultipartFile imgfile ,House house ,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String  imgname=imgfile.getOriginalFilename();//获得文件名
        System.out.println(imgname);
        String ms=System.currentTimeMillis()+"";
        imgname=ms + "_"+ imgname;//图片的新名字
        System.out.println(imgname);
//    获得该文件的绝对路径
    String imgfilepath="D:\\xImage\\images";
    String img=imgfilepath+"/"+imgname;
    File file=new File(img);
        if(!file.exists()){
            file.mkdirs();
        }else {
            file.delete();

            file.mkdirs();
        }
    imgfile.transferTo(file);//图片的复制
    house.setHtypeimg("images/"+imgname);
            if (houseService.updatehouse(house)){
                    request.getRequestDispatcher("/developer/detialhousezyj.jsp").forward(request,response);
            }

}
















}