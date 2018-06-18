package com.huaju.control;

import com.huaju.entity.Company;
import com.huaju.entity.Cta;
import com.huaju.entity.Favor;
import com.huaju.entity.User;
import com.huaju.service.FavorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@RequestMapping(value = "favor")
@RestController
public class FavorControl {
    @Autowired
    FavorService favorService;
    @RequestMapping(value = "clickFavor.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void clickFavor(HttpSession session,Favor favor, HttpServletRequest request, HttpServletResponse response){
        String type= (String) session.getAttribute("userType");
        System.out.println(type);
        if("1".equals(type)){
            favor.setFavortype(1);
            User user = (User) session.getAttribute("user");
            favor.setUserid(user.getUserid());
        }else if("2".equals(type)){
            favor.setFavortype(2);
            Company com= (Company) session.getAttribute("user");
            favor.setUserid(com.getComid());
        }else{
            favor.setFavortype(3);
            Cta cta= (Cta) session.getAttribute("user");
            favor.setUserid(cta.getCtaid());
        }
        favorService.clickFavor(favor);
    }
}
