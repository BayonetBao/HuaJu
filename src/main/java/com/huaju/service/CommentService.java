package com.huaju.service;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Comment;
import com.huaju.entity.CommentQueryPojo;

import java.util.List;
import java.util.Map;

public interface CommentService {
    public List<Comment> selectAllComment();
    public PageInfo<Comment> selectCommentByQueryPojo(Map<String,Object> map);
    public boolean insertComment(Comment comment);
    public  boolean deleteComment(Integer id);
}
