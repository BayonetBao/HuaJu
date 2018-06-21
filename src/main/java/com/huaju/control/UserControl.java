package com.huaju.control;

import com.huaju.entity.User;
import com.huaju.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

@RequestMapping(value = "/user")
@RestController
public class UserControl {
    @Autowired
    private UserService userService;
    @RequestMapping(value = "/updateMessage.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void updateMessage(User user,HttpServletRequest request,HttpSession session,HttpServletResponse response) throws IOException {
        if(userService.updateUser(user)){
            User user1= (User) session.getAttribute("user");
            user1.setUphone(user.getUphone());
            user1.setUname(user.getUname());
            user1.setRemark(user.getRemark());
            request.getSession().setAttribute("user",user1);
            response.sendRedirect(request.getContextPath()+"/user/ke/content.jsp");
        }else{
            response.sendRedirect(request.getContextPath()+"/user/ke/fail.jsp");
        }
    }
    @RequestMapping(value = "/uploadImg.action",method = {RequestMethod.GET,RequestMethod.POST})
    public String uploadImg(@RequestParam("userpic") CommonsMultipartFile imgFileUp, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
        String result;
        User user= (User) session.getAttribute("user");
        String  filename=imgFileUp.getOriginalFilename();//获得文件名
        //        以时间毫秒数命名
        String ms=System.currentTimeMillis()+"";
        filename=ms + "_"+ filename;//图片的新名字
        String imgFile="E:\\GaoBo_ShiXun\\eclipseWork\\HuaJu\\src\\main\\webapp\\user\\ke\\images\\userImg";
        String img =imgFile+"/"+filename;
        File file=new File(img);
        if(!file.exists()){
            file.mkdirs();
        }else{
            file.delete();
            file.mkdirs();
        }
        imgFileUp.transferTo(file);
        user.setUserpic(filename);
        request.getSession().setAttribute("user",user);
        if(userService.updatePic(user)) {
            result = "success";
        }else{
            result="fail";
        }
        return result;
    }
    @RequestMapping(value = "/updatePassword.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void updatePassword(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws IOException {
        String upwd=request.getParameter("newpwd");
        User user= (User) session.getAttribute("user");
        user.setUpwd(upwd);
        if(userService.updatePassword(user)){
           request.getSession().setAttribute("user",user);
           response.sendRedirect(request.getContextPath()+"user/ke/success.jsp");
        }else{
            response.sendRedirect(request.getContextPath()+"user/ke/error.jsp");
        }

    }
    @RequestMapping(value = "init.action")
    public void init(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IOException {
        session.setAttribute("uid",-1);
        session.setAttribute("userType",-1);
        response.sendRedirect(request.getContextPath()+"/build/index.action");
    }
}
