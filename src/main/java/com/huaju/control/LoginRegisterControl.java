package com.huaju.control;

import com.huaju.entity.Company;
import com.huaju.entity.User;
import com.huaju.service.AllUserService;
import com.huaju.util.miaodiyun.httpApiDemo.IndustrySMS;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

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
            if(allUserService.setUser(user)){

            }
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
    @RequestMapping(value="/checkLoginUname.action",method = RequestMethod.GET)
    public String checkLoginUname(String uname,String userType,String password,HttpSession session){
        System.out.println("uname:"+uname);
        System.out.println("userType:"+userType);
        System.out.println("passeord:"+password);
        if("1".equals(userType)){
            User user=allUserService.selectUserByName(uname);
            System.out.println("user:"+user);
            if(user!=null){
                if(user.getUpwd().equals(password)){
                    session.setAttribute("user",user);
                    session.setAttribute("userType",userType);
                    System.out.println(2);
                    return "2";
                }else{
                    System.out.println(1);
                    return "1";
                }
            }
        }else if("2".equals(userType)){
            Company company=allUserService.selectCompanyByName(uname);
            if(company!=null){
                if(company.getCompassword().equals(password)){
                    session.setAttribute("user",company);
                    session.setAttribute("userType",userType);
                    return "2";
                }
                return "1";
            }
        }else {

        }

        return "0";
    }
    //开发商注册
    @RequestMapping(value = "/registerCompany.action",method = RequestMethod.POST)
    public void registerCompany(Company company, MultipartFile clicenses,MultipartFile constructions,MultipartFile landuses,MultipartFile presales,MultipartFile permits,MultipartFile implementss,MultipartFile qualitys,MultipartFile instructions,HttpServletRequest request,HttpServletResponse response) throws IOException {

        String imagesTotalPath="/user/bao/developerRegister/images";
        String imageFile=request.getServletContext().getRealPath(imagesTotalPath);
        String image1=imageFile+"/"+company.getComuname()+"/clicenses."+ FilenameUtils.getExtension(clicenses.getOriginalFilename());
        String image2=imageFile+"/"+company.getComuname()+"/constructions."+ FilenameUtils.getExtension(constructions.getOriginalFilename());;
        String image3=imageFile+"/"+company.getComuname()+"/landuses."+ FilenameUtils.getExtension(landuses.getOriginalFilename());;
        String image4=imageFile+"/"+company.getComuname()+"/presales."+ FilenameUtils.getExtension(presales.getOriginalFilename());;
        String image5=imageFile+"/"+company.getComuname()+"/permits."+ FilenameUtils.getExtension(permits.getOriginalFilename());;
        String image6=imageFile+"/"+company.getComuname()+"/implementss."+ FilenameUtils.getExtension(implementss.getOriginalFilename());;
        String image7=imageFile+"/"+company.getComuname()+"/qualitys."+ FilenameUtils.getExtension(qualitys.getOriginalFilename());;
        String image8=imageFile+"/"+company.getComuname()+"/instructions."+ FilenameUtils.getExtension(instructions.getOriginalFilename());;
        File file1=new File(image1);
        File file2=new File(image2);
        File file3=new File(image3);
        File file4=new File(image4);
        File file5=new File(image5);
        File file6=new File(image6);
        File file7=new File(image7);
        File file8=new File(image8);
        if(!file1.exists()){
            file1.mkdirs();
        }else {
            file1.delete();
            file1.mkdirs();
        }

        if(!file2.exists()){
            file2.mkdirs();
        }else {
            file2.delete();
            file2.mkdirs();
        }

        if(!file3.exists()){
            file3.mkdirs();
        }else {
            file3.delete();
            file3.mkdirs();
        }

        if(!file4.exists()){
            file4.mkdirs();
        }else {
            file4.delete();
            file4.mkdirs();
        }

        if(!file5.exists()){
            file5.mkdirs();
        }else {
            file5.delete();
            file5.mkdirs();
        }

        if(!file6.exists()){
            file6.mkdirs();
        }else {
            file6.delete();
            file6.mkdirs();
        }

        if(!file7.exists()){
            file7.mkdirs();
        }else {
            file7.delete();
            file7.mkdirs();
        }

        if(!file8.exists()){
            file8.mkdirs();
        }else {
            file8.delete();
            file8.mkdirs();
        }

        clicenses.transferTo(file1);
        constructions.transferTo(file2);
        landuses.transferTo(file3);
        presales.transferTo(file4);
        permits.transferTo(file5);
        implementss.transferTo(file6);
        qualitys.transferTo(file7);
        instructions.transferTo(file8);
//        String image1=imageFile+"/"+company.getComuname()+"/clicenses."+ FilenameUtils.getExtension(clicenses.getOriginalFilename());
//        String image2=imageFile+"/"+company.getComuname()+"/constructions."+ FilenameUtils.getExtension(constructions.getOriginalFilename());;
//        String image3=imageFile+"/"+company.getComuname()+"/landuses."+ FilenameUtils.getExtension(landuses.getOriginalFilename());;
//        String image4=imageFile+"/"+company.getComuname()+"/presales."+ FilenameUtils.getExtension(presales.getOriginalFilename());;
//        String image5=imageFile+"/"+company.getComuname()+"/permits."+ FilenameUtils.getExtension(permits.getOriginalFilename());;
//        String image6=imageFile+"/"+company.getComuname()+"/implementss."+ FilenameUtils.getExtension(implementss.getOriginalFilename());;
//        String image7=imageFile+"/"+company.getComuname()+"/qualitys."+ FilenameUtils.getExtension(qualitys.getOriginalFilename());;
//        String image8=imageFile+"/"+company.getComuname()+"/instructions."+ FilenameUtils.getExtension(instructions.getOriginalFilename());;

        company.setClicense(imagesTotalPath+"/"+company.getComuname()+"/clicenses."+ FilenameUtils.getExtension(clicenses.getOriginalFilename()));
        company.setConstruction(imagesTotalPath+"/"+company.getComuname()+"/constructions."+ FilenameUtils.getExtension(clicenses.getOriginalFilename()));
        company.setLanduse(imagesTotalPath+"/"+company.getComuname()+"/landuses."+ FilenameUtils.getExtension(clicenses.getOriginalFilename()));
        company.setPresale(imagesTotalPath+"/"+company.getComuname()+"/presales."+ FilenameUtils.getExtension(clicenses.getOriginalFilename()));
        company.setPermit(imagesTotalPath+"/"+company.getComuname()+"/permits."+ FilenameUtils.getExtension(clicenses.getOriginalFilename()));
        company.setImplement(imagesTotalPath+"/"+company.getComuname()+"/implementss."+ FilenameUtils.getExtension(clicenses.getOriginalFilename()));
        company.setQuality(imagesTotalPath+"/"+company.getComuname()+"/qualitys."+ FilenameUtils.getExtension(clicenses.getOriginalFilename()));
        company.setInstruction(imagesTotalPath+"/"+company.getComuname()+"/instructions."+ FilenameUtils.getExtension(clicenses.getOriginalFilename()));
        if(allUserService.setCompany(company)){

        }

    }
    @RequestMapping(value = "/login.action",method = RequestMethod.POST)
    public void loginSuccess(HttpServletRequest request,HttpServletResponse response) throws IOException {
        response.sendRedirect(request.getContextPath()+"/user/bao/index.jsp");
    }
    @RequestMapping(value = "exit.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void exit(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
        session.invalidate();
        response.sendRedirect(request.getContextPath()+"/user/bao/index.jsp");
    }
}
