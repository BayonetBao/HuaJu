package com.huaju.dao;

import com.huaju.entity.Comment;

import java.util.List;

public interface CommentMapper {
      public List<Comment> selectAllComment();
      public List<Comment> selectCommentByIdtype(String idtype);//评论人员的类型 用户咨询师
      public List<Comment> selectCommentByComtype(String comtype);//评论的类型 好评差评
      public boolean insertComment(Comment comment);
      public  boolean deleteComment(Integer id);
}