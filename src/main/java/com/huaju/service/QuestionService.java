package com.huaju.service;

import com.huaju.entity.Question;

import java.util.List;

public interface QuestionService {
    public List<Question> selectByCart(Integer cart);
}
