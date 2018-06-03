package com.huaju.dao;

import com.huaju.entity.Comment;
import com.huaju.entity.CommentQueryPojo;

import java.util.List;

public interface CommentMapper {
      public List<Comment>  selectCommentByQueryPojo(CommentQueryPojo commentQueryPojo);
      public boolean insertComment(Comment comment);
      public  boolean deleteComment(Integer id);
}