package com.huaju.control;

import com.huaju.entity.Appointment;
import com.huaju.service.ApponitmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.Date;

@RestController
@RequestMapping("/appointment")
public class AppointmentControl {
    @Autowired
    private ApponitmentService apponitmentService;
    @RequestMapping(value = "/insertAppointment.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void insertAppointment(Appointment appointment, HttpSession session){
        appointment.setUserid((Integer) session.getAttribute("uid"));
        appointment.setApptime(new Date());
        System.out.println(appointment.toString());
        apponitmentService.insertAppointment(appointment);
    }
}
