package com.huaju.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class DeveloperControl {
    @RequestMapping(value = "/main.action")
    public void developerIndex(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //System.out.println("4545454545");
        request.getRequestDispatcher("/user/bao/index.jsp").forward(request,response);
    }
}
