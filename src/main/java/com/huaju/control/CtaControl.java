package com.huaju.control;

import com.github.pagehelper.PageInfo;

import com.huaju.dao.BuildMapper;
import com.huaju.dao.CommentMapper;
import com.huaju.entity.*;
import com.huaju.service.ActivityService;
import com.huaju.service.BuildService;
import com.huaju.service.CtaService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/cta")
public class CtaControl {
    @Autowired
    private ActivityService activityService;
    @Autowired
    private CtaService ctaService;
//    咨询师列表页ZYJ
    @Autowired
    private BuildMapper buildMapper;
    @Autowired
    private CommentMapper commentMapper;
//    咨询师列表页
    @RequestMapping(value = "/ctalist.action", method = RequestMethod.GET)
    public void ctalist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        将查询的条件和分页的内容封装成map
        Map<String,Object> cmap=new HashMap<>();
//        每页显示的条数
        int pageSize=4;
//        当前的页面默认是首页
        int curPage=1;
        String scurPage=request.getParameter("curPage");
        if (scurPage!=null&&!scurPage.trim().equals("")){
            curPage=Integer.parseInt(scurPage);
        }
        cmap.put("curPage",curPage);
//        每页显示的条数
        cmap.put("pageSize",pageSize);

        PageInfo<Cta> pageInfo=ctaService.AllCta(cmap);
        request.setAttribute("pageInfo",pageInfo);
        request.getRequestDispatcher("/user/ZYJ/ctalist.jsp").forward(request,response);
    }
    //咨询师详情
    @RequestMapping(value = "/ctaIndex.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void ctaIndex(Integer ctaid,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        Cta cta=ctaService.selectCtaById(ctaid);
        BuildQueryPojo buildQueryPojo=new BuildQueryPojo();
        buildQueryPojo.setCtaid(ctaid);
        List<Build> builds=buildMapper.selectBuildQueryPojo(buildQueryPojo);
        CommentQueryPojo commentQueryPojo=new CommentQueryPojo();
        commentQueryPojo.setIdtype(3);
        commentQueryPojo.setUserid(ctaid);
        List<Comment> comments=commentMapper.selectCommentByQueryPojo(commentQueryPojo);
        request.setAttribute("comments",comments);
        request.setAttribute("cta",cta);
        request.setAttribute("builds",builds);
        request.getRequestDispatcher("/user/ke/ctaIndex.jsp").forward(request,response);
    }
    //添加咨询师(张宝)
    @RequestMapping(value = "/addCta.action", method = RequestMethod.POST)
    public void addCta(Cta cta, MultipartFile img, HttpServletRequest request, HttpServletResponse response) throws IOException {
        String imagesTotalPath="developer/images/ctaimg";
        String imageFile=request.getServletContext().getRealPath(imagesTotalPath);
        String imageName=System.currentTimeMillis()+img.getOriginalFilename();
        String filename=imageFile+"/"+imageName;
        String image=imagesTotalPath+"/"+imageName;
        File file=new File(filename);
        if(!file.exists()){
            file.mkdirs();
        }else {
            file.delete();
            file.mkdirs();
        }
        img.transferTo(file );
        //build.setBpicture(imagesTotalPath+"/"+image);

        cta.setCtaimg(image);
        if(ctaService.addCta(cta)) {
            response.sendRedirect(request.getContextPath()+"/user/bao/addCta.jsp");
        }
    }

//    添加咨询师ZYJ
    @RequestMapping(value = "/addallcta.action",method = RequestMethod.POST)
    public  void addAllCta(Cta cta,MultipartFile imgfile,HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        String  imgname=imgfile.getOriginalFilename();//获得文件名
//        以时间毫秒数命名
        String ms=System.currentTimeMillis()+"";
        imgname=ms + "_"+ imgname;//图片的新名字
//    获得该文件的绝对路径s
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
//        图片名字写进cta
        String comid1=request.getParameter("comid");
        System.out.println("comid1111111"+comid1);
        cta.setCtaimg("images/"+imgname);
        if (ctaService.addAllCta(cta)){
            request.getRequestDispatcher("/developer/AddCta.jsp").forward(request,response);
        }
    }

//根据开发商id列出旗下所有咨询师ZYJ
    @RequestMapping(value = "/showallinfocta.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void showAllInfoCta(String comid,String action,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
       System.out.println("comid+++++++++"+comid);
        List<Cta> ctas = ctaService.showAllInfoCta(Integer.parseInt(comid));
//        System.out.println(ctas);
        request.setAttribute("ctas",ctas);

           if (comid != null) {
               request.getRequestDispatcher("/developer/ctalist.jsp").forward(request,response);
       }

    }
    //    根据咨询师id查出咨询师详情页ZYJ
    @RequestMapping(value = "/showDetial.action",method = RequestMethod.GET)
     public void showDetialCta(String ctaid,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        Cta cta=ctaService.showDetialCta(Integer.parseInt(ctaid));
        request.setAttribute("ctas",cta);
        request.getRequestDispatcher("/developer/ctaial.jsp").forward(request,response);

    }

//    删除咨询师信息ZYJ
    @RequestMapping(value = "/deleteCta.action" , method = RequestMethod.GET)
    public void deleteCta(String ctaid,HttpServletRequest request,HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();

        if (ctaService.deleteCta(Integer.parseInt(ctaid))){
            try {
//                String houseid= request.getParameter("houseid");
                System.out.println("1");
                out.print("1");
            } catch (Exception e) {
                e.printStackTrace();
                out.print("0");
            }
        }
    }

    //    修改咨询师信息ZYJ
    @RequestMapping(value = "/updatecta.action",method = {RequestMethod.GET,RequestMethod.POST})
public void updateCta(String ctaid,Cta cta,MultipartFile imgfile,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        System.out.println("ctaid====update"+ctaid);
        String ctaid1=ctaid;
        if(imgfile==null){

//            列出咨询师信息
                Cta cta1=ctaService.showDetialCta(Integer.parseInt(ctaid));
                System.out.println(cta1);
                request.setAttribute("ctas",cta1);
                request.setAttribute("ctaid",ctaid);//把咨询师id发送到修改前台页面
            request.getRequestDispatcher("/developer/updatecta.jsp").forward(request,response);
        }else {

                //            修改咨询师信息
                String  imgname=imgfile.getOriginalFilename();//获得文件名
//        以时间毫秒数命名
                String ms=System.currentTimeMillis()+"";
                imgname=ms + "_"+ imgname;//图片的新名字
//    获得该文件的绝对路径s
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
                cta.setCtaimg("images/"+imgname);
//             SET ctaimg=#{ctaimg},ctarelname=#{ctarelname},ctaphone=#{ctaphone},qq=#{qq},school=#{school},education=#{education},charactere=#{charactere},intro=#{intro}

                String ctarelname=request.getParameter("ctarelname");
            String ctaphone=request.getParameter("ctaphone");
            String qq =request.getParameter("qq");
            String school=request.getParameter("school");
            String education =request.getParameter("education");
            String charactere=request.getParameter("charactere");
            String intro=request.getParameter("intro");
           String ctaid2=request.getParameter("ctaid");
            System.out.println(ctarelname+ctaphone+qq+school+education+charactere+intro);
            cta.setCtarelname(ctarelname);
            cta.setCtaphone(ctaphone);
            cta.setQq(qq);
            cta.setSchool(school);
            cta.setEducation(education);
            cta.setCharactere(charactere);
            cta.setIntro(intro);
            cta.setCtaid(Integer.parseInt(ctaid2));
//            拿到开发商id
            String comid=request.getParameter("comid");
         ctaService.updateCtaInfo(cta);

//            Cta cta1=ctaService.showDetialCta(Integer.parseInt(ctaid));
//            request.setAttribute("ctas",cta1);
            request.getRequestDispatcher("/cta/showallinfocta.action?comid="+comid).forward(request,response);

            }
            }

}



