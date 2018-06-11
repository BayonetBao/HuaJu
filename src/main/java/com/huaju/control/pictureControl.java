package com.huaju.control;

import com.huaju.entity.Door;
import com.huaju.entity.House;
import com.huaju.service.DoorService;
import com.huaju.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import sun.text.resources.FormatData;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/picture")
public class pictureControl {

    @Autowired
    private DoorService doorService;
    @Autowired
    private HouseService houseService;

    @RequestMapping(value = "/showDoorBtype.action" , method = RequestMethod.GET)
    public void  showDoorBtype(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        List<Door> door=doorService.showDoorInfo();
        System.out.println(door);

        request.setAttribute("door" ,door);
        request.getRequestDispatcher("/developer/picture.jsp").forward(request,response);
    }


    @RequestMapping(value = "/picture.action", method = {RequestMethod.POST,RequestMethod.GET})
    public void updateTrue(MultipartFile imgfile,House house,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String  imgname=imgfile.getOriginalFilename();//获得文件名
        System.out.println(imgname);
//        以时间毫秒数命名
        String ms=System.currentTimeMillis()+"";
        imgname=ms + "_"+ imgname;//图片的新名字
        System.out.println(imgname);
//    获得该文件的绝对路径
        String imgfilepath="D:\\xImage\\images";
        System.out.println(imgfilepath+"=============================");
        String img=imgfilepath+"/"+imgname;
        System.out.println(ms);
        File file=new File(img);
        if(!file.exists()){
            file.mkdirs();
        }else {
            file.delete();

            file.mkdirs();
        }
        imgfile.transferTo(file);//图片的复制

        house.setHtypeimg("images/"+imgname);

                houseService.addHouseInfoZYJ(house);

                String houseanly=request.getParameter("hname");
                String time=request.getParameter("updatename");


//                 house.setUpdatename(time1);
        System.out.println("time1"+time);
                System.out.println(time);

                System.out.println(houseanly);
                System.out.println(house.getHname());

        request.getRequestDispatcher("developer/houselistzyj.jsp").forward(request,response);

    }


}
