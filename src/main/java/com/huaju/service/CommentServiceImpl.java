package com.huaju.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.huaju.dao.CommentMapper;
import com.huaju.dao.FavorMapper;
import com.huaju.dao.RecommentMapper;
import com.huaju.entity.Build;
import com.huaju.entity.Comment;
import com.huaju.entity.CommentQueryPojo;
import com.huaju.entity.Favor;
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
    @Autowired
    private RecommentMapper recommentMapper;
    @Autowired
    private FavorMapper favorMapper;

    @Override
    public List<Comment> selectAllComment() {
        CommentQueryPojo commentQueryPojo=null;
        return commentMapper.selectCommentByQueryPojo(commentQueryPojo);
    }

    @Override
    public PageInfo<Comment> selectCommentByQueryPojo(Map<String, Object> map) {
        CommentQueryPojo commentQueryPojo= (CommentQueryPojo) map.get("commentQueryPojo");
        int curPage=(int)map.get("curPage");
        int pageSize=(int) map.get("pageSize");
        Page page=PageHelper.startPage(curPage,pageSize);
        List<Comment> list=commentMapper.selectCommentByQueryPojo(commentQueryPojo);
        PageInfo<Comment> pageInfo=new PageInfo<>(list);
        return pageInfo;
    }

    @Override
    public List<Comment> selectCommentByQueryPojo(CommentQueryPojo commentQueryPojo) {
        return commentMapper.selectCommentByQueryPojo(commentQueryPojo);
    }

    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
    @Override
    public boolean insertComment(Comment comment) {
        return commentMapper.insertComment(comment);
    }
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
    @Override
    public boolean deleteComment(Integer id) {
        boolean flag=true;
        if(recommentMapper.deleteRecomentByCommentid(id)){
            favorMapper.deleteFavorByUseridAndCommentid(new Favor(id,null,null));
            commentMapper.deleteComment(id);
        }else {
            flag=false;
        }
        return flag;
    }

    @Override
    public List<Build> selectBuildInComment(Integer comid) {
        return commentMapper.selectBuildInComment(comid);
    }

    @Override
    public Comment selectCommentById(Integer commentid) {
        return commentMapper.selectCommentById(commentid);
    }
}
