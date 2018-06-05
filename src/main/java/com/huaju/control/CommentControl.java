package com.huaju.control;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Build;
import com.huaju.entity.Comment;
import com.huaju.entity.CommentQueryPojo;
import com.huaju.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@RequestMapping(value = "/comment")
@RestController
public class CommentControl {
    @Autowired
    private CommentService commentService;
    @RequestMapping(value = "selectAllCommentByQueryPojo.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void selectAllCommentByQueryPojo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Build> blist=commentService.selectBuildInComment(1);
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
            commentQueryPojo.setIdtype(idtype);
        }
        if (comtype != null && !comtype.trim().equals("")) {
            commentQueryPojo.setComtype(comtype);
        }
        int pageSize = 2;
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
            commentQueryPojo.setIdtype(idtype);
        }
        if (comtype != null && !comtype.trim().equals("")) {
            commentQueryPojo.setComtype(comtype);
        }
        int pageSize = 2;
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
        request.getRequestDispatcher("/user/ke/comment.jsp").forward(request, response);
    }
    @RequestMapping(value = "deleteCommentById.action",method = {RequestMethod.GET,RequestMethod.POST})
    public String deleteCommentById(HttpServletRequest request,HttpServletResponse response){
        Integer id=Integer.parseInt(request.getParameter("commentid"));
        String result;
        if(commentService.deleteComment(id)){
            result="success";
        }else{
            result="error";
        }
        return result;
    }
    @RequestMapping(value = "insertComment.action",method = {RequestMethod.POST,RequestMethod.GET})
    public String insertComment(Comment comment,HttpServletRequest request,HttpServletResponse response){
        String result="";
        Date date=new Date();
        comment.setComtime(date);
        if(commentService.insertComment(comment)){
            result="success";
        }else {
            result="error";
        }
        return result;
    }
}
