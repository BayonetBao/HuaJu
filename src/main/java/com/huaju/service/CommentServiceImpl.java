package com.huaju.service;

import com.huaju.dao.CommentMapper;
import com.huaju.entity.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentMapper commentMapper;

    @Override
    public List<Comment> selectAllComment() {
        return commentMapper.selectAllComment();
    }

    @Override
    public List<Comment> selectCommentByIdtype(String idtype) {
        return commentMapper.selectCommentByIdtype(idtype);
    }

    @Override
    public List<Comment> selectCommentByComtype(String comtype) {
        return commentMapper.selectCommentByComtype(comtype);
    }

    @Override
    public boolean insertComment(Comment comment) {
        return commentMapper.insertComment(comment);
    }

    @Override
    public boolean deleteComment(Integer id) {
        return commentMapper.deleteComment(id);
    }
}
