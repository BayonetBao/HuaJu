package com.huaju.service;

import com.huaju.dao.AppointmentMapper;
import com.huaju.entity.Appointment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AppointmentServiceImpl implements ApponitmentService {
    @Autowired
    private AppointmentMapper appointmentMapper;
    @Override
    public boolean insertAppointment(Appointment appointment) {
        return appointmentMapper.insertAppointment(appointment);
    }
}
