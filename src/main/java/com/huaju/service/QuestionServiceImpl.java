package com.huaju.service;

import com.huaju.dao.QuestionMapper;
import com.huaju.entity.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class QuestionServiceImpl implements  QuestionService {
    @Autowired
    private QuestionMapper questionMapper;
    @Override
    public List<Question> selectByCart(Integer cart) {
        List<Question> questions=new ArrayList<Question>();
        questions=questionMapper.selectByCart(cart);
        return questions;
    }
}
