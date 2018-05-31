package com.huaju.service;

import com.huaju.dao.UserMapper;
import com.huaju.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User getUser(int id) {
        return userMapper.getUserById(id);
    }
}
