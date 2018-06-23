package com.huaju.control;

import com.huaju.entity.Entry;
import com.huaju.service.EntryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RequestMapping(value = "/ActivityEntry")
@Controller
public class EntryControl {

    @Autowired
    private EntryService entryService;
    @RequestMapping(value = "/activityEntry.action",method = {RequestMethod.GET,RequestMethod.POST})
    public String ActivityEntry(Entry entry,HttpServletRequest request, HttpServletResponse response){
        //Integer activityAddNumber = activity.getBuildingid();
        String result;
        //request.setAttribute("activityAddNumber",activityAddNumber);
        if(entryService.ActivityEntry(entry)){
            result="sucess";
            System.out.println(1111);
        }else{
            result= "error";
            System.out.println(2222);
        }
        return result;
    }
    @RequestMapping(value = "/entryInfo.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void SelectEntryInfo(int entid,HttpServletRequest request,HttpServletResponse response){
        Entry entry = entryService.selectEntryInfo(entid);

        request.setAttribute("entry",entry);

    }
}
