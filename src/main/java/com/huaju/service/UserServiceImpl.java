package com.huaju.service;

import com.huaju.dao.UserMapper;
import com.huaju.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;
    @Override
    public boolean updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public boolean updatePassword(User user) {
        return userMapper.updatePassword(user);
    }

    @Override
    public boolean updatePic(User user) {
        return userMapper.updatePic(user);
    }
}
