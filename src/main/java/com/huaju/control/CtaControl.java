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
}
