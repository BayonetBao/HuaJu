package com.huaju.dao;

import com.huaju.entity.Build;
import com.huaju.entity.Comment;
import com.huaju.entity.CommentQueryPojo;

import java.util.List;

public interface CommentMapper {
      public List<Comment>  selectCommentByQueryPojo(CommentQueryPojo commentQueryPojo);
      public boolean insertComment(Comment comment);
      public  boolean deleteComment(Integer id);
      public List<Build> selectBuildInComment(Integer comid);
      public Comment selectCommentById(Integer commentid);
}