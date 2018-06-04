package com.huaju.control;

import com.huaju.entity.Company;
import com.huaju.entity.User;
import com.huaju.service.AllUserService;
import com.huaju.util.miaodiyun.httpApiDemo.IndustrySMS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@RestController
public class LoginRegisterControl {
    @Autowired
    private AllUserService allUserService;
    //发送验证码（张宝）
    @RequestMapping(value = "/sendyanzm.action",method = RequestMethod.GET)
    public String sendYanzm(String yznum, String rphone, HttpSession session,HttpServletRequest request, HttpServletResponse response){
        //IndustrySMS.execute(rphone,yznum);
//        System.out.println("sbdd");
//        System.out.println(yznum+""+rphone);
       session.setAttribute("yznum",yznum);
//        System.out.println("123456");
//       String s= (String) session.getAttribute("yznum");
//       System.out.println(s);
        return "1";
    }
    //普通用户提交注册（张宝)
    @RequestMapping(value = "/register.action",method = RequestMethod.POST)
    public void register(String runame, String rpass, String rphone, String yanzm,HttpSession session, HttpServletRequest r , HttpServletResponse response){
        String s= (String) session.getAttribute("yznum");
        if(s.equals(yanzm)){
            User user=new User();
            user.setUname(runame);
            user.setUpwd(rpass);
            user.setUphone(rphone);
            allUserService.setUser(user);
        }
    }
    //查询用户名是否已经注册（张宝）
    @RequestMapping(value = "/checkUname.action",method = RequestMethod.GET)
    public String selectUserByName(String runame,String sssid){
        User user=allUserService.selectUserByName(runame);
//        System.out.println(runame);
//        System.out.println(sssid);
        if(user!=null){
            return "1";
        }
        return "0";
    }
    //所有用户登录用户名查询
    @RequestMapping(value="/checkLoginUname.action")
    public String checkLoginUname(String uname,String userType,String password){
        System.out.println("uname:"+uname);
        System.out.println("userType:"+userType);
        System.out.println("passeord:"+password);
        if("1".equals(userType)){
            User user=allUserService.selectUserByName(uname);
            System.out.println("user:"+user);
            if(user!=null){
                if(user.getUpwd().equals(password)){
                    return "2";
                }else{
                    return "1";
                }

            }
        }else if("2".equals(userType)){
            Company company=allUserService.selectCompanyByName(uname);
            if(company!=null){
                return "1";
            }
        }else {


        }
        return "0";
    }
}
