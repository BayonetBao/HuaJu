package com.huaju.control;

import com.huaju.entity.Favor;
import com.huaju.service.FavorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RequestMapping(value = "favor")
@RestController
public class FavorControl {
    @Autowired
    FavorService favorService;
    @RequestMapping(value = "clickFavor.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void clickFavor(Favor favor, HttpServletRequest request, HttpServletResponse response){
        favorService.clickFavor(favor);
    }
}
