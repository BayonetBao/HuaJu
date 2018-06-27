package com.huaju.control;

import com.google.gson.Gson;
import com.huaju.entity.Entry;
import com.huaju.service.EntryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RequestMapping(value = "/ActivityEntry")
@Controller
public class EntryControl {

    @Autowired
    private EntryService entryService;
    @RequestMapping(value = "/activityEntry.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void ActivityEntry(int entid,Entry entry,HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String entnote = request.getParameter("entnote");
        String entphone = request.getParameter("entphone");

        entry.setEntnote(entnote);
        entry.setEntphone(entphone);
        entryService.ActivityEntry(entry);
        request.getRequestDispatcher("/ActivityEntry/entryInfo.action").forward(request, response);
    }
   @RequestMapping(value = "/entryInfo.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void SelectEntryInfo(int entid,HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        Entry entry = entryService.selectEntryInfo(entid);
        Gson gson = new Gson();
        String json = gson.toJson(entry);
        System.out.println(json);
        response.getWriter().write(json);
        request.setAttribute("entry",entry);
        request.getRequestDispatcher("/user/fei/ativity.jsp").forward(request,response);
    }
}
