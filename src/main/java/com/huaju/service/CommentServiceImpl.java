package com.huaju.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.CommentMapper;
import com.huaju.entity.Comment;
import com.huaju.entity.CommentQueryPojo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentMapper commentMapper;

    @Override
    public List<Comment> selectAllComment() {
        CommentQueryPojo commentQueryPojo=null;
        return commentMapper.selectCommentByQueryPojo(commentQueryPojo);
    }

    @Override
    public PageInfo<Comment> selectCommentByQueryPojo(Map<String, Object> map) {
        CommentQueryPojo commentQueryPojo= (CommentQueryPojo) map.get("commentQueryPojo");
        PageInfo<Comment> pageBean=new PageInfo<Comment>();
        //页面数据填充
        int curPage=(int)map.get("curPage");
        int pageSize=(int) map.get("pageSize");
        Integer buildid= (Integer) map.get("buildingid");
        List<Comment> list=commentMapper.selectCommentByQueryPojo(commentQueryPojo);
        PageHelper.startPage(curPage,pageSize);
        PageInfo<Comment> pageInfo=new PageInfo<>(list);
        return pageBean;
    }

    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
    @Override
    public boolean insertComment(Comment comment) {
        return commentMapper.insertComment(comment);
    }
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
    @Override
    public boolean deleteComment(Integer id) {
        return commentMapper.deleteComment(id);
    }
}
