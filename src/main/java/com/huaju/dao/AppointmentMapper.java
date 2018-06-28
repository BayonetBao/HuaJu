package com.huaju.dao;

import com.huaju.entity.Appointment;

import java.util.Date;
import java.util.List;

public interface AppointmentMapper {
   public boolean insertAppointment(Appointment appointment);//添加预约咨询 珂
   public List<Appointment> selectAppointment(Integer userid);
   public List<Appointment> checkAppointment(String s1,String s2);
}