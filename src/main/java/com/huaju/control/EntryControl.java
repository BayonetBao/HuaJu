package com.huaju.control;

import com.google.gson.Gson;
import com.huaju.entity.Entry;
import com.huaju.service.EntryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RequestMapping(value = "/ActivityEntry")
@Controller
public class EntryControl {

    @Autowired
    private EntryService entryService;
    @RequestMapping(value = "/activityEntry.action",method = {RequestMethod.GET,RequestMethod.POST})
    public String ActivityEntry(int entid,Entry entry,HttpServletRequest request, HttpServletResponse response) throws IOException {
        //Integer activityAddNumber = activity.getBuildingid();
        String result;
        //request.setAttribute("activityAddNumber",activityAddNumber);
        if(entryService.ActivityEntry(entry)){
            result="sucess";
            this.SelectEntryInfo(entid,request,response);
            System.out.println(1111);
        }else{
            result= "error";
            System.out.println(2222);
        }

        return result;
    }
   // @RequestMapping(value = "/entryInfo.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void SelectEntryInfo(int entid,HttpServletRequest request,HttpServletResponse response) throws IOException {
        Entry entry = entryService.selectEntryInfo(entid);
        Gson gson = new Gson();
        String json = gson.toJson(entry);
        System.out.println(json);
        response.getWriter().write(json);
        request.setAttribute("entry",entry);

    }
}
