package com.huaju.service;

import com.huaju.dao.AppointmentMapper;
import com.huaju.entity.Appointment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AppointmentServiceImpl implements ApponitmentService {
    @Autowired
    private AppointmentMapper appointmentMapper;
    @Override
    public boolean insertAppointment(Appointment appointment) {
        return appointmentMapper.insertAppointment(appointment);
    }

    @Override
    public List<Appointment> selectAppointment(Integer userid) {
        return appointmentMapper.selectAppointment(userid);
    }

    @Override
    public List<Appointment> checkAppointment(String s1, String s2) {
        return appointmentMapper.checkAppointment(s1,s2);
    }
}
