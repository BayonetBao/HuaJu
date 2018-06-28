package com.huaju.control;

import com.huaju.entity.Appointment;
import com.huaju.service.ApponitmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/appointment")
public class AppointmentControl {
    @Autowired
    private ApponitmentService apponitmentService;
    @RequestMapping(value = "/insertAppointment.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void insertAppointment(Appointment appointment, HttpSession session){
        appointment.setUserid((Integer) session.getAttribute("uid"));
        appointment.setApptime(new Date());
        apponitmentService.insertAppointment(appointment);
    }
    @RequestMapping(value = "/selectAppointment.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void selectAppointment(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer userid= (Integer) session.getAttribute("uid");
        List<Appointment> appointments=apponitmentService.selectAppointment(userid);
        request.setAttribute("appointments",appointments);
        request.getRequestDispatcher("/user/ke/appointment.jsp").forward(request,response);
    }
    @RequestMapping(value = "checkAppointment.action",method = {RequestMethod.GET,RequestMethod.POST})
    public List<Appointment> checkAppointment(String s1,String s2){
        List<Appointment> appointments=apponitmentService.checkAppointment(s1,s2);
        return appointments;
    }
}
