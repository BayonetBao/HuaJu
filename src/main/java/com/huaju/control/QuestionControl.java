package com.huaju.control;

import com.huaju.entity.Question;
import com.huaju.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RequestMapping(value = "/question")
@RestController
public class QuestionControl {
    @Autowired
    private QuestionService questionService;
    @RequestMapping(value = "/selectQuestionByCart.action",method = {RequestMethod.GET,RequestMethod.POST})
    public  List<Question> selectQuestionByCart(Integer questioncart){
        List<Question> questions=new ArrayList<Question>();
        questions=questionService.selectByCart(questioncart);
        return questions;
    }
}
