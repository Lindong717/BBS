package com.example.bbsproject.service;

import com.example.bbsproject.entity.User;
import com.example.bbsproject.mapper.UserMapper;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Resource
    UserMapper userMapper;

    public int add(User user){
        return userMapper.add(user);
    }

    public User login(String name,String pass){
        return userMapper.login(name,pass);
    }
}
