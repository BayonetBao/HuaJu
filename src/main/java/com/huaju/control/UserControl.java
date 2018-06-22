package com.huaju.control;

import com.huaju.entity.Buildimg;
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
import java.io.*;

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
            response.sendRedirect(request.getContextPath()+"/user/ke/success.jsp");
        }else{
            response.sendRedirect(request.getContextPath()+"/user/ke/fail.jsp");
        }
    }
    @RequestMapping(value = "/uploadImg.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void uploadImg(@RequestParam("userpic") CommonsMultipartFile imgFileUp, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
        String result;
        InputStream is = null;
        OutputStream os = null;
        if(!imgFileUp.isEmpty()) {
            try {
                is = imgFileUp.getInputStream();

                String uploadPath = "/user/ke/images/userImg";
                String realUploadPath = request.getSession().getServletContext().getRealPath(uploadPath);

                User user = (User) session.getAttribute("user");
                String des = realUploadPath + "/"+user.getUserid()+session.getAttribute("userType")+imgFileUp.getOriginalFilename();
                user.setUserpic(uploadPath + "/" + user.getUserid()+session.getAttribute("userType")+imgFileUp.getOriginalFilename());
                userService.updatePic(user);
                System.out.println(user.getUserid());
                System.out.println(user.getUserpic());
                session.setAttribute("user", user);
                os = new FileOutputStream(des);
                byte[] buffer = new byte[1024];
                int len = 0;
                while ((len = is.read(buffer)) > 0) {
                    os.write(buffer);
                }
            } catch (Exception e) {
                e.getStackTrace();
            } finally {
                if (is != null) {
                    try {
                        is.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    } finally {
                        if (os != null) {
                            try {
                                os.close();
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                    }
                }
            }
        }
    }
    @RequestMapping(value = "/updatePassword.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void updatePassword(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws IOException {
        String upwd=request.getParameter("newpwd");
        User user= (User) session.getAttribute("user");
        user.setUpwd(upwd);
        if(userService.updatePassword(user)){
           request.getSession().setAttribute("user",user);
           response.sendRedirect(request.getContextPath()+"/user/ke/success.jsp");
        }else{
            response.sendRedirect(request.getContextPath()+"/user/ke/error.jsp");
        }

    }
    @RequestMapping(value = "init.action")
    public void init(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IOException {
        session.setAttribute("uid",-1);
        session.setAttribute("userType",-1);
        session.setAttribute("user",null);
        response.sendRedirect(request.getContextPath()+"/build/index.action");
    }
}
