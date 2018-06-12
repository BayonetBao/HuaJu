package com.huaju.control;

import com.huaju.entity.*;
import com.huaju.service.RecommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
@RequestMapping("/recomment")
@RestController
public class RecommentControl {
    @Autowired
    RecommentService recommentService;
    @RequestMapping(value = "/selectRecoment.action",method = {RequestMethod.GET,RequestMethod.POST})
    public List<Recomment> selectRecoment(RecommentQueryPojo recommentQueryPojo){
        return recommentService.selectRecommentByQueryPojo(recommentQueryPojo);
    }
    @RequestMapping(value = "/addrecomment.action",method = {RequestMethod.GET,RequestMethod.POST})
    public Recomment addrecomment(Recomment recomment, HttpSession session){
        Integer type=new Integer((String) session.getAttribute("userType"));
        recomment.setReusertype(type);
        if(type==1){
            User user= (User) session.getAttribute("user");
            recomment.setReuserid(user.getUserid());
            recomment.setReusername(user.getUname());
        }else if(type==2){
            Company company= (Company) session.getAttribute("user");
            recomment.setReuserid(company.getComid());
            recomment.setReusername(company.getComuname());
        }else{
            Cta cta= (Cta) session.getAttribute("user");
            recomment.setReuserid(cta.getCtaid());
            recomment.setReusername(cta.getCtaname());
        }
        Date date=new Date();
        recomment.setRecomtime(date);
        if(recommentService.addRecoment(recomment)){
        return  recomment;}
        else{
            return null;
        }
    }
    @RequestMapping(value = "/deleterecomment.action",method = {RequestMethod.GET,RequestMethod.POST})
    public String deleterecomment(HttpServletRequest request){
        Integer recomid=new Integer(request.getParameter("recommentid"));
        String result="";
        if(recommentService.deleteRecomment(recomid)){
            result="success";
        }else {
            result="fail";
        }
        return result;
    }
}
