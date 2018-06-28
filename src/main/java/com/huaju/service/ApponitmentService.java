package com.huaju.service;

import com.huaju.entity.Appointment;

import java.util.List;

public interface ApponitmentService {
    public boolean insertAppointment(Appointment appointment);
    public List<Appointment> selectAppointment(Integer userid);
    public List<Appointment> checkAppointment(String s1,String s2);
}
