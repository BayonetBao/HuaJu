package com.huaju.entity;

import java.util.Date;

public class Story {
    private Integer stoid;

    private String stotitle;

    private String stoimg;

    private Integer userid;

    private Date stotime;

    private String stocontent;

    public Integer getStoid() {
        return stoid;
    }

    public void setStoid(Integer stoid) {
        this.stoid = stoid;
    }

    public String getStotitle() {
        return stotitle;
    }

    public void setStotitle(String stotitle) {
        this.stotitle = stotitle == null ? null : stotitle.trim();
    }

    public String getStoimg() {
        return stoimg;
    }

    public void setStoimg(String stoimg) {
        this.stoimg = stoimg == null ? null : stoimg.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Date getStotime() {
        return stotime;
    }

    public void setStotime(Date stotime) {
        this.stotime = stotime;
    }

    public String getStocontent() {
        return stocontent;
    }

    public void setStocontent(String stocontent) {
        this.stocontent = stocontent == null ? null : stocontent.trim();
    }
}