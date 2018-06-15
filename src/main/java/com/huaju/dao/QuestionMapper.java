package com.huaju.dao;

import com.huaju.entity.Question;

import java.util.List;

public interface QuestionMapper {
    public List<Question> selectByCart(Integer cart);
}
