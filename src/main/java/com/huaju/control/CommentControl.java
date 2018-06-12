package com.huaju.control;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.*;
import com.huaju.service.CommentService;
import com.huaju.service.RecommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.*;

@RequestMapping(value = "/comment")
@RestController
public class CommentControl {
    @Autowired
    private CommentService commentService;

//    后台查询
    @RequestMapping(value = "selectAllCommentByQueryPojo.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void selectAllCommentByQueryPojo(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Company com= (Company) session.getAttribute("user");
        List<Build> blist=commentService.selectBuildInComment(com.getComid());
        Map<String, Object> cmap=new HashMap<>();
        CommentQueryPojo commentQueryPojo=new CommentQueryPojo();
        String bid=request.getParameter("buildingid");//楼盘id
        String idtype=request.getParameter("idtype");//评论人员的类型 用户咨询师
        String comtype=request.getParameter("comtype");//评论的类型 好评差评
        String scurPage=request.getParameter("curPage");
        Integer buildingid;
        if (bid != null && !bid.trim().equals("")) {
            buildingid = new Integer(bid);
            commentQueryPojo.setBuildingid(buildingid);
        }
        if (idtype != null && !idtype.trim().equals("")) {
            commentQueryPojo.setIdtype(new Integer(idtype));
        }
        if (comtype != null && !comtype.trim().equals("")) {
            commentQueryPojo.setComtype(comtype);
        }
        int pageSize = 5;
        //当前的页面默认是首页
        int curPage = 1;
        if (scurPage != null && !scurPage.trim().equals("")) {
            curPage = Integer.parseInt(scurPage);
        }
        cmap.put("pageSize", pageSize);
        cmap.put("curPage",curPage);
        cmap.put("commentQueryPojo",commentQueryPojo);
        PageInfo<Comment> pageInfo = commentService.selectCommentByQueryPojo(cmap);
        request.setAttribute("pageInfo", pageInfo);
        request.setAttribute("commentQueryPojo", commentQueryPojo);
        request.setAttribute("blist",blist);
        request.getRequestDispatcher("/developer/commentList.jsp").forward(request, response);
    }
//    前台查询
    @RequestMapping(value = "selectAllCommentByQueryPojoFront.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void selectAllCommentByQueryPojoFront(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, Object> cmap=new HashMap<>();
        CommentQueryPojo commentQueryPojo=new CommentQueryPojo();
        String bid=request.getParameter("buildingid");//楼盘id
        String idtype=request.getParameter("idtype");//评论人员的类型 用户咨询师
        String comtype=request.getParameter("comtype");//评论的类型 好评差评
        String scurPage=request.getParameter("curPage");
        Integer buildingid;
        if (bid != null && !bid.trim().equals("")) {
            buildingid = new Integer(bid);
            commentQueryPojo.setBuildingid(buildingid);
        }
        if (idtype != null && !idtype.trim().equals("")) {
            Integer idtype1=new Integer(idtype);
            commentQueryPojo.setIdtype(idtype1);
        }
        if (comtype != null && !comtype.trim().equals("")) {
            commentQueryPojo.setComtype(comtype);
        }
        int pageSize = 5;
        //当前的页面默认是首页
        int curPage = 1;
        if (scurPage != null && !scurPage.trim().equals("")) {
            curPage = Integer.parseInt(scurPage);
        }
        cmap.put("pageSize", pageSize);
        cmap.put("curPage",curPage);
        cmap.put("commentQueryPojo",commentQueryPojo);
        List<Comment> comments=commentService.selectCommentByQueryPojo(commentQueryPojo);
        PageInfo<Comment> pageInfo = commentService.selectCommentByQueryPojo(cmap);
        request.setAttribute("comments",comments);
        request.setAttribute("pageInfo", pageInfo);
        request.setAttribute("commentQueryPojo", commentQueryPojo);
        request.getRequestDispatcher("/user/ke/comment.jsp").forward(request, response);
    }
//    通过id删除评论
    @RequestMapping(value = "deleteCommentById.action",method = {RequestMethod.GET,RequestMethod.POST})
    public String deleteCommentById(Integer commentid,HttpServletRequest request,HttpServletResponse response){
        String result;
        if(commentService.deleteComment(commentid)){
            result="success";
        }else{
            result="fail";
        }
        return result;
    }
//    前台添加评论
    @RequestMapping(value = "insertComment.action",method = {RequestMethod.POST,RequestMethod.GET})
    public String insertComment(HttpSession session,Comment comment,HttpServletRequest request,HttpServletResponse response){
        String result="";
        Date date=new Date();
        Integer type= new Integer((String) session.getAttribute("userType"));
        Integer id=new Integer((Integer) session.getAttribute("uid"));
        comment.setId(id);
        comment.setIdtype(type);
        if(comment.getComtype().equals("")||comment.getComtype()==null){
            comment.setComtype("好评");
        }
        comment.setComtime(date);
        if(commentService.insertComment(comment)){
            result="success";
        }else {
            result="error";
        }
        return result;
    }

}
