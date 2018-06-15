package com.huaju.entity;

public class Question {
    Integer questionid;
    String questionname;
    Integer questioncart;
    Integer answercart;

    public Question() {
        super();
    }

    public Question(String questionname, Integer questioncart, Integer answercart) {
        this.questionname = questionname;
        this.questioncart = questioncart;
        this.answercart = answercart;
    }

    @Override
    public String toString() {
        return "Question{" +
                "questionid=" + questionid +
                ", questionname='" + questionname + '\'' +
                ", questioncart=" + questioncart +
                ", answercart=" + answercart +
                '}';
    }

    public Integer getQuestionid() {
        return questionid;
    }

    public void setQuestionid(Integer questionid) {
        this.questionid = questionid;
    }

    public String getQuestionname() {
        return questionname;
    }

    public void setQuestionname(String questionname) {
        this.questionname = questionname;
    }

    public Integer getQuestioncart() {
        return questioncart;
    }

    public void setQuestioncart(Integer questioncart) {
        this.questioncart = questioncart;
    }

    public Integer getAnswercart() {
        return answercart;
    }

    public void setAnswercart(Integer answercart) {
        this.answercart = answercart;
    }
}
